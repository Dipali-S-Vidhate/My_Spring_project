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
            background-color: ;
            padding: 20px;
        }
         .errormassage  {
        text-align:center;
        font-weight:bold;
        margin-bottom:20px;
        color:red;
         margin-bottom:15px;
          margin-top:15px;
          
          }
          
         .navbar {
            background-color: #333;
            overflow: hidden;
            padding: 15px;
        }

        .navbar a {
            float: left;
            color: rgb(238, 229, 229);
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 18px;
        }

        .navbar a:hover {
            background-color: ebe6e6;
            color: black;
        }
        

        h2 {
            text-align: center;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            background:#d7d9da;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
        

        input[type="text"], input[type="email"], input[type="password"] , input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #e3eff7;
            border-radius: 4px;
        }

		 label {
            font-weight: bold;
        }
	
        .gender {
            margin: 10px 0;
        }
         .course {
            margin: 10px 0;
        }

        input[type="radio"] {
            margin-right: 10px;
        }
        
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

    </style>
</head>
<body>
   
   
<%@ include file="Header1.jsp" %>
   
     <p>
${message}
</p>

    <h2> Login</h2>
    <form action="/checkSignIn" method="get">
       
       
        <label for="Type">Type:</label>
        <br>
        <div style="width: 100%">
        <select style="width: 100% ; height: 30px" id="Type" name="Type" required>
        <option value="">select</option>
          <option value="Admin">Admin</option>
        <option value="Student">Student</option>
        </select>
        </div>
        
        
       <br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
        
        <br>
           <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        
        <input type="submit" value="Login">
       
        <div class="errormassage"> ${errormsg}</div>
        
    </form>
    <br>
		<div class="content">
		
			<a> Organized by ENTC Dept. </a> 
		
		</div>
</body>
</html>