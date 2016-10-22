<%-- 
    Document   : add
    Created on : Oct 21, 2016, 12:00:02 PM
    Author     : Dylan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add A New Movie</title>
        <link rel="stylesheet" type="text/css" href="./style.css" />
    </head>
    <body>
        <h1>Add A New Movie</h1>
        
        <form name="addForm" action="addMovie" method="get">
        
            <label>Movie Name:</label>
            <input type="text" name="name" value="" />
            <br>
            <label>Date Produced:</label>
            <input type="text" name="produced" value="" />
            <br>
            <label>Rating:</label>
            <input type="text" name="rating" value="" />
            <br>
            <input type="submit" name="submit" value="Submit" />
        </form>
    </body>
</html>
