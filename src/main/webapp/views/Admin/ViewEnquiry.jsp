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
<h1>Enquiry list</h1>

<table>
<tr>
<th>EID</th>
<th>Name</th>
<th>Email</th>
<th>Gender</th>
<th>Message</th>
<th>Date</th>
<th>Remark</th>


<th>Set</th>

</tr>

<%
List<Enquiry> enq_list =(List<Enquiry>)request.getAttribute("enq_list");
for(Enquiry enq : enq_list)
{
	
%>
<tr>
<td><%= enq.getEid() %></td>
<td><%=enq.getStudent().getName() %></td>
<td><%=enq.getStudent().getEmail() %></td>
<td><%=enq.getStudent().getGender() %></td>
<td><%=enq.getMessage() %></td>
<td><%=enq.getEdate() %></td>
<td><%=enq.getRemark() %></td>

<td><a  href="/SetRemark?eid=<%=enq.getEid() %>"> Set Remark</a></td>
</tr>
<%
}
%>
<!-- 
<c:forEach var="enq" items="${enq_list}">
 	<tr>
 		<td>${enq.eid}</td>
 		<td>${enq.getStudent().getName()}</td>
 		<td>${enq.getStudent().getEmail()}</td>
 		<td>${enq.getStudent().getGender()}</td>
 		<td>${enq.Message}</td>
 		<td>${enq.Edate}</td>
 		<td>${enq.Remark}</td>
 		<td><a href="/SetRemark?eid=${enq_list}">Set Remark</a></td>
 	</tr>
 </c:forEach>

  -->

</table>

</body>
</html>