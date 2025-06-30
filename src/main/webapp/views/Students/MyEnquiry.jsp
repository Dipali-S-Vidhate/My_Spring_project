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


 <%@ include file="Student_Header.jsp" %>
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

<script type="text/javascript">

function confirmDelete()
{
	return confirm("Do you want to delete enquiry..?")
	}

</script>
<h1>Enquiry list</h1>

<table>
<tr>
<th>EID</th>
<th>SID</th>
<th>Message</th>
<th>Date</th>
<th>Remark</th>

<th>Delete</th>


</tr>

<%
List<Enquiry> enq_list =(List<Enquiry>)request.getAttribute("enq_list");
for(Enquiry enq : enq_list)
{
	
%>
<tr>
<td><%= enq.getEid() %></td>
<td><%=enq.getStudent().getSid() %></td>
<td><%=enq.getMessage() %></td>
<td><%=enq.getEdate() %></td>
<td><%=enq.getRemark() %></td>


<td><a href="/deleteEnquiry?eid=<%=enq.getEid()%>&sid=<%=enq.getStudent().getSid()%>" onclick="return confirmDelete()"> Delete</a></td>

<%-- <td><a  href="/deleteEnquiry?eid=${enq.eid}"  onclick="return confirmDelete()"> Delete</a></td>
 --%></tr>
<%
}// ${enq.eid }/deleteEnquiry?eid=<%=enq.getEid() ,enq.getStudent().getSid()  
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