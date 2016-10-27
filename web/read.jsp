
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Read Database</title>
        <link rel="stylesheet" type="text/css" href="./style.css" />
    </head>
    
    <% String table = (String) request.getAttribute("table"); %>
    
    <body>
        <h1>My Movies Database</h1>
        
        <%= table %>
        
        <br><br>
        
        <a href="add">Add A New Movie</a>
        <br><br>
        <a href="search.jsp">Search Movies</a>
        
    </body>
</html>
