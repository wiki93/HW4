
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Movies"%>
<% Movies movie = (Movies) request.getAttribute("movie");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update A Movie</title>
        <link rel="stylesheet" type="text/css" href="./style.css" />
    </head>
    <body>

        <div class="wrap"> <!-- div to hold all other divs -->

            <%@ include file="includes/header.jsp" %>

            <%@ include file="includes/menu.jsp" %>


            <div class="main"> <!-- main div -->

                <h1>Update A Movie</h1>

                <form name="updateForm" action="updateMovie" method="get">

                    <label>Movie ID:</label>
                    <input type="text" name="id" value="<%= movie.getMovieID()%>" readonly/>
                    <br>
                    <label>Movie Name:</label>
                    <input type="text" name="name" value="<%= movie.getMovieName()%>" />
                    <br>
                    <label>Date Produced:</label>
                    <input type="text" name="produced" value="<%= movie.getDateProduced()%>" />
                    <br>
                    <label>Rating:</label>
                    <input type="text" name="rating" value="<%= movie.getRating()%>" />
                    <br>
                    <br>
                    <input type="reset" name="reset" value="Clear" />
                    <input type="submit" name="submit" value="Update" />

                </form>

            </div> <!-- close main div-->

            <%@ include file="includes/footer.jsp" %>

        </div> <!-- close wrap div-->

    </body>
</html>
