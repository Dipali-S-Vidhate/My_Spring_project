<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Set Remark Form</title>
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
        
        .Successmassage{
        text-align:center;
        font-weight:bold;
        margin-bottom:20px;
        color:green;
         margin-bottom:15px;
          margin-top:15px;
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
            background:#9d9e9e;
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

    <h2>Set Remark Form </h2>
    <form action="/SetRemarkSuccess?eid=${enq.eid }" method="post">
        
          <label for="name">Nmae :</label>
        <input type="text" readonly="readonly" value="${enq.getStudent().getName()}" style="width:70%" id="name" name="name " required>
        <br>

        <label for="message">Message :</label>
        <input  type="textarea" readonly="readonly" value="${enq.getMessage() }" style="width:100%; height:150px " id="message" name="message"  required>
         <br>
        
         <br>
         <label for="remark">Set Remark :</label>
        <input type="textarea"   style="width:100%; height:150px "  id="remark" name="remark"  required>
         <br>
         <br>
         
         
         
        
        <input type="submit" value="Send">
           <div class="Successmassage"> ${msg}</div> 
    </form>
    <br>
   
 
		<div class="content">
		
		</div>
		
</body>
</html>