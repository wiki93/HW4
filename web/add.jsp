<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add A New Movie</title>
        <link rel="stylesheet" type="text/css" href="./style.css" />
    </head>
    <body>

        <div class="wrap"> <!-- div to hold all other divs -->

            <%@ include file="includes/header.jsp" %>

            <%@ include file="includes/menu.jsp" %>


            <div class="main"> <!-- main div -->

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
                    <br>
                    <input type="reset" name="reset" value="Clear" />
                    <input type="submit" name="submit" value="Submit" />

                </form>

            </div> <!-- close main div-->

            <%@ include file="includes/footer.jsp" %>

        </div> <!-- close wrap div-->

    </body>
</html>
