<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page import="java.util.*" %> 
 <%@ page import="com.MyWebProject.Entity.*" %>
 
 
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>


 <%@ include file="Admin_Header.jsp" %>
<style>


 body {
            font-family: Arial, sans-serif;
            background-color:rgb(242, 239, 231);
            margin: 0;
            padding: 0;
            height: 400px;
        }

       
        .navbar {
            background-color: #333;
            overflow: hidden;
            padding: 15px;
        }

        .navbar a {
            float: left;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 18px;
        }

        .navbar a:hover {
            background-color: 522546;
            color: black;
        }

        .content {
            text-align: center;
            padding: 50px;
            height: 100%;
        }

        .content h1 {
            font-size: 3em;
        }

        .button-container {
            margin-top: 40px;
        }

        .button-container a {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        .button-container a:hover {
            background-color: #0056b3;
        }



tr:nth-child(even) {
  background-color: rgba(150, 212, 212, 0.4);
  
}

th:nth-child(even),td:nth-child(even) {
  background-color: rgba(150, 212, 212, 0.4);
}
</style>
<h1>Student list</h1>

<table>
<tr>
<th>sid</th>
<th>name</th>
<th>email</th>
<th>gender</th>
<th>course</th>
<th>Password</th>
<th>status</th>
<th>Edit</th>
</tr>

<%
List<Student>  stud_list =(List<Student>)request.getAttribute("stud_list");
for(Student stud : stud_list)
{
	
%>
<tr>
<td><%= stud.getSid() %></td>
<td><%= stud.getName() %></td>
<td><%= stud.getEmail() %></td>
<td><%= stud.getGender() %></td>
<td><%= stud.getCourse() %></td>
<td><%= stud.getPassword() %></td>
<td><%= stud.getStatus() %></td>
<td><a  href="/StudentEdit?sid=<%= stud.getSid() %>"> Modify</a></td>
</tr>
<%
}
%>
<!-- 
<c:forEach var="stud" items="${stud_list}">
 	<tr>
 		<td>${stud.sid}</td>
 		<td>${stud.name}</td>
 		<td>${stud.email}</td>
 		<td>${stud.gender}</td>
 		<td>${stud.course}</td>
 		<td>${stud.password}</td>
 		<td><a href="studentEdit?sid=${stud.sid}">Modify</a></td>
 	</tr>
 </c:forEach>

  -->

</table>

</body>
</html>