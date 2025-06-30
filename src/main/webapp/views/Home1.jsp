<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>
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

   <%@include file="Header1.jsp" %>
 
    <div class="content">
        <h1>Welcome to ListBros Pvt. Ltm. </h1>
     

        <div class="button-container">
            <a href="/signup">Register</a>
            
            <a href="/signIN">Login</a>
        </div>
    </div>
   
  
  
      <%@include file="Footer.jsp" %>
</body>
</html>