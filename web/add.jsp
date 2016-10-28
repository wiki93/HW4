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

                    <table>
                        <th colspan="2">Add A New Movie:</th>
                        <tr>
                            <td>Movie Name:</td>
                            <td><input type="text" name="name" value="" /></td>
                        </tr>
                        <tr>
                            <td>Date Produced:</td>
                            <td><input type="text" name="produced" value="" /></td>
                        </tr>
                        <tr>
                            <td>Rating:</td>
                            <td><input type="text" name="rating" value="" /></td>
                            
                        </tr>
                        
                    </table>
                    <br>
                    <input type="reset" name="reset" value="Clear" />
                    <input type="submit" name="submit" value="Submit" />
                    

                </form>

            </div> <!-- close main div-->

            <%@ include file="includes/footer.jsp" %>

        </div> <!-- close wrap div-->

    </body>
</html>
