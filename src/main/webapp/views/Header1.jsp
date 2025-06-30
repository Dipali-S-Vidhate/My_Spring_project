<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <style>
        body {
            font-family: Arial, sans-serif;
            background-color:rgb(242, 239, 231);
            margin: 0;
            padding: 0;
        }

       
        .navbar {
            background-color:rgb(82, 37, 70) ;
            overflow: hidden;
            padding: 15px;
        }

        .navbar a {
            float: left;
            color: F7374F;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 18px;
        }

        .navbar a:hover {
            background-color: 2C2C2C;
            color: black;
        }

        .content {
            text-align: center;
            padding: 50px;
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
            background-color:88304E;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        .button-container a:hover {
            background-color:522546;
        }

    </style>


</head>
<body>
   <div class="navbar">
        <a href="/Demo">Home</a>
        <a href="/signup">Student Register</a>
        <a href= "/signIN">Student Login</a>
         <a href="/signIN">Admin Login</a>
      
        <a href="#">About us</a>
    </div>

</body>
</html>