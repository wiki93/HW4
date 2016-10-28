<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Movies</title>
        <link rel="stylesheet" type="text/css" href="./style.css" />
    </head>
    <body>
        
        <div class="wrap"> <!-- div to hold all other divs -->
            
            <%@ include file="includes/header.jsp" %>
            
            <%@ include file="includes/menu.jsp" %>
            
            
        <div class="main"> <!-- main div -->
            
            <h1>Movies and Ratings Database</h1>
        
            <a href="read">View All Movies</a>
            <br><br>
            <a href="search.jsp">Search Movies</a>
        
        </div> <!-- close main div-->
            
        <%@ include file="includes/footer.jsp" %>
        
        </div> <!-- close wrap div-->
    </body>
</html>
