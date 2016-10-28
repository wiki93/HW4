
package dbHelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Movies;

public class SearchQuery {
    
    private Connection conn;
    private ResultSet results;

    public SearchQuery(){
        
        Properties props = new Properties();
        InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String driver = props.getProperty("driver.name");
        String url = props.getProperty("server.name");
        String username = props.getProperty("user.name");
        String passwd = props.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, passwd);
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void doSearch(String movieName){
        
        try {
            String query = "SELECT * FROM movies WHERE UPPER(movieName) LIKE ? ORDER BY movieID ASC";
            
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, "%" + movieName.toUpperCase() + "%");
            this.results = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public String getHTMLTable()
    {
        
        String table = "";
        table += "<table>";
        
        try {
            table += "<tr>";
            table += "<th>";
            table += "Movie ID";
            table += "</th>";
            table += "<th>";
            table += "Name";
            table += "</th>";
            table += "<th>";
            table += "Date Produced";
            table += "</th>";
            table += "<th>";
            table += "Rating";
            table += "</th>";
            table += "<th>";
            table += "";
            table += "</th>";
            table += "</tr>";
            
            while(this.results.next())
            {
                Movies movie = new Movies();
                movie.setMovieID(this.results.getInt("movieID"));
                movie.setMovieName(this.results.getString("movieName"));
                movie.setDateProduced(this.results.getInt("dateProduced"));
                movie.setRating(this.results.getInt("rating"));
                
                
                
                table += "<tr>";
                
                table += "<td>";
                table += movie.getMovieID();
                table += "</td>";
                
                table += "<td>";
                table += movie.getMovieName();
                table += "</td>";
                
                table += "<td>";
                table += movie.getDateProduced();
                table += "</td>";
                
                table += "<td>";
                table += movie.getRating();
                table += "</td>";
                
                table += "<td>";
                table += "<a href=update?movieID=" + movie.getMovieID() + "> Update </a>" + "<a href=delete?movieID=" + movie.getMovieID() + "> Delete </a>";
                table += "</td>";
                
                table += "</tr>";
            }
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        table +="</table>";
        return table;
        
    }
}
