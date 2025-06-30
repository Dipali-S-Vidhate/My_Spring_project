<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: ;
            padding: 20px;
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

<%@ include file="Admin_Header.jsp" %>
 
 <p>

</p>

    <h2>Student Modify</h2>
    <form action="/StudentEditSuccess?sid=${std.sid}" method="post">
        <label for="name">Full Name:</label>
        <input type="text" id="name" name="name"value="${std.name}" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${std.email}" required>

          <label for="gender">Gender:</label>
   
   
        <div class="gender">
            <input type="radio" id="male" name="gender" checked="checked" value="Male"${std.gender=="Male"?'checked':'' } required>
            <label for="male">Male</label>

            <input type="radio" id="female" name="gender" checked="checked" value="Female"checked="checked" value="Male"${std.gender=="Female"?'checked':'' } >
            <label for="female">Female</label>
        </div>
        <br>

        
        <label for="course">Course:</label>
        <br>
        <div style="width: 100%">
        <select style="width: 100% ; height: 30px" id="course" name="course" required>
            <option value="">Select</option>
            <option value="BTech"${std.course=="BTech"?'Selected':'' }>BTech</option>
            <option value="MCA"${std.course=="MCA"?'Selected':'' }>MCA</option>
            <option value="BCA"${std.course=="BCA"?'Selected':'' }>BCA</option>
            <option value="MBA"${std.course=="MBA"?'Selected':'' }>MBA</option>
        </select> <br><br>
        </div>
           <label for="password">Password:</label>
        <input type="password" id="password" name="password"value="${std.password}"  required>
        
        
         <label for="status">status:</label>
        <br>
        <div style="width: 100%">
        <select style="width: 100% ; height: 30px" id="status" name="status" required>
        <option value="">select</option>
          <option value="Pending"${std.status=="Pending"?'Selected':'' }>Pending</option>
        <option value="Accept"${std.status=="Accept"?'Selected':'' }>Accept</option>
        
        
        <input type="submit" value="Modify">
        <div class="successmassage"></div> 
        ${msg}
    </form>
    <br>
   
 
		<div class="content">
		
			<a> Organized by ENTC Dept. </a> 
		</div>
</body>
</html>