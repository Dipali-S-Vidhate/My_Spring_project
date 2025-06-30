<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

    </style>
</head>
<body>

   
 
    <div class="content">
        <h1>Welcome : ${std.name}!</h1>
     

        <div class="button-container">
            <a href="/MyProfile?sid=${std.sid}">My Profile</a>
            
            <a href="#">Enquiry</a>
            
        </div>
    </div>
   
  
  
     
</body>
</html>
