<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! int sum=0;
        double totsal=0;
         double avg;
        double max;%>
        <% Connection c=DriverManager.getConnection("jdbc:derby://localhost:1527/employee");
        Statement st=c.createStatement();
        ResultSet rs=st.executeQuery("SELECT * FROM UNTITLED ");
     
        while(rs.next())
                {
                    sum=sum+1;
                    totsal+=(rs.getDouble(4));
                   
                }
           
        avg=totsal/sum;
out.println("The total no of Employee is :" + sum);%> <br>
<%
        out.println("The AVG Salary of Employees is :" + avg);
       
%><br>

 
     
    </body>
</html>
