
package model;

public class Movies {
    
    private int movieID;
    private String movieName;
    private int dateProduced;
    private int rating;

    public Movies() {
        this.movieID = 0;
        this.movieName = "";
        this.dateProduced = 0;
        this.rating = 0;
    }
    
    public Movies(int movieID, String movieName, int dateProduced, int rating) {
        this.movieID = movieID;
        this.movieName = movieName;
        this.dateProduced = dateProduced;
        this.rating = rating;
    }

    public int getMovieID() {
        return movieID;
    }

    public void setMovieID(int movieID) {
        this.movieID = movieID;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public int getDateProduced() {
        return dateProduced;
    }

    public void setDateProduced(int dateProduced) {
        this.dateProduced = dateProduced;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    @Override
    public String toString() {
        return "Movies{" + "movieID=" + movieID + ", movieName=" + movieName + ", dateProduced=" + dateProduced + ", rating=" + rating + '}';
    }
    
    
    
}
