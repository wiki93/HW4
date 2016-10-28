
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="./style.css" />
        <title>Search Movies</title>

    </head>
    <body>

        <div class="wrap"> <!-- div to hold all other divs -->

            <%@ include file="includes/header.jsp" %>

            <%@ include file="includes/menu.jsp" %>


            <div class="main"> <!-- main div -->

                

                <form name="searchForm" action="search" method="get">
                    <table>
                        <th colspan="2">Search for a Movie</th>
                        <tr>
                            <td>Movie Name:</td>
                            <td><input type="text" name="searchVal" value="" /></td>
                        </tr>
                    </table>
             
                    <br>

                    <input type="submit" name="submit" value="Search" />

                </form>

            </div> <!-- close main div-->

            <%@ include file="includes/footer.jsp" %>

        </div> <!-- close wrap div-->

    </body>
</html>
