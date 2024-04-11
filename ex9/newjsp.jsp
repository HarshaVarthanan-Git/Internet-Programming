<%@page import="java.util.Comparator"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="mypackage.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <% 
        ArrayList<Student> students = new ArrayList<Student>();
        students.add(new Student("Harsha", 90, "abc@gmail.com"));
        students.add(new Student("Varthanan", 80, "ab@gmail.com"));
        students.add(new Student("Batman", 100, "bat@gmail.com"));

        Collections.sort(students, new Comparator<Student>() {
            public int compare(Student s1, Student s2) {
                return s1.getName().compareTo(s2.getName());
            }
        });

        pageContext.setAttribute("students", students);
    %>
    
    <table border="1">
        <thead>
            
                <th>Name</th>
                <th>Grade</th>
                <th>Email</th>
            
        </thead>
        <tbody>
            <c:forEach items="${pageScope.students}" var="student">
                
                <tr><td><c:out value='${student.name}'></c:out></td>
                    <td><c:out value="${student.getGrade()}" /></td>
                    <td><c:out value="${student.getEmail()}" /></td></tr>
                
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
