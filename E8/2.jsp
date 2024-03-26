<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! 
        double max; %>
        <% Connection c=DriverManager.getConnection("jdbc:derby://localhost:1527/employee");
        Statement st=c.createStatement();
        ResultSet rs=st.executeQuery("SELECT MAX(SALARY) AS max_sal from UNTITLED ");
        if(rs.next())
        {
            max=rs.getDouble("max_sal");
        }
     
       
       %>
       <h2> Max salary :
           <%= max %> </h2>
    </body>
</html>
