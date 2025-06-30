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
        .Successmassage{
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
        
        .image-preview img {
        display:name;
        margin-bottom:20px;
        text-align: center;
        }
        
        .image-preview img {
        max-width:100px;
        max-height:100px;
        border-radius:10px;
        box-shadow: 0 0 15px #0ff;
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

<script>
function previewImage(event){
	const previewContainer =  document.getElementById('imagePreview');
	const previewImg = document.getElementById('previewImg');
	const file=event.target.files[0];
	
	if(file){
		const reader =new FileReader();
		reader.onload =function(e){
			previewImg.src=e.target.result;
			previewContainer.style.display='block';
		};
		reader.readAsDataURL(file);
	}
}
</script>
<body>

<%@ include file="Header1.jsp" %>
 
 <p>

</p>
  

    <h2>Student Registration</h2>
    <form action="/saveData" enctype="multipart/form-data" method="post">
        <label for="name">Full Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

          <label for="gender">Gender:</label>
   
   
        <div class="gender">
            <input type="radio" id="male" name="gender" value="Male" required>
            <label for="male">Male</label>

            <input type="radio" id="female" name="gender" value="Female">
            <label for="female">Female</label>
        </div>
        <br>

        
        <label for="course">Course:</label>
        <br>
        <div style="width: 100%">
        <select style="width: 100% ; height: 30px" id="course" name="course" required>
            <option value="">Select</option>
            <option value="BTech">BTech</option>
            <option value="MCA">MCA</option>
            <option value="BCA">BCA</option>
            <option value="MBA">MBA</option>
        </select> <br><br>
        </div>
           <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        
        
            <label for="status">status:</label>
        <br>
        <div style="width: 100%">
        <select style="width: 100% ; height: 30px" id="status" name="status" required>
        
          <option value="Pending">Pending</option>
          <br>
          
          <br>
          <div>
          <input type="file" id="image" name="imagefile" accept="image/*" onchange="previewImage(event)"/>
        </div>
        
        <br>
        
        <div class="image-preview" id="imagePreview">
        <img id="previewImg" src="" alt="Selected Image"/>
        </div>
        
        
        <input type="submit" value="Register">
       
         <div class="Successmassage"> ${msg}</div> 
       
    </form>
    <br>
  

 
		<div class="content">
		
			<a> Organized by ENTC Dept. </a> 
		</div>
</body>
</html>