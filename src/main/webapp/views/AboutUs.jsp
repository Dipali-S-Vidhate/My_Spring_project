
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f6f9;
        }

        .header {
            background-color: #2c3e50;
            color: white;
            padding: 40px 20px;
            text-align: center;
        }

        .container {
            padding: 40px 20px;
            max-width: 1000px;
            margin: auto;
        }

        .about-section {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        .about-section h2 {
            color: #2c3e50;
            margin-bottom: 15px;
        }

        .about-section p {
            color: #555;
            font-size: 16px;
            line-height: 1.6;
        }

        .team {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            margin-top: 40px;
        }

        .member {
            flex: 1 1 200px;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .member img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 10px;
        }

        .member h4 {
            margin: 10px 0 5px;
            color: #333;
        }

        .member p {
            margin: 0;
            color: #777;
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>About Us</h1>
        <p>Who we are and what we do</p>
    </div>

    <div class="container">
        <div class="about-section">
            <h2>Our Mission</h2>
            <p>
                We are a team of passionate developers and thinkers dedicated to building efficient and user-friendly web applications.
                Our mission is to deliver quality services and solutions to meet our clients' business goals through technology.
            </p>
        </div>

        <div class="team">
            <div class="member">
                <img src="image/LakshLogo.png" alt="Founder 1">
                <h4>Litbross pvt.lmt</h4>
                <p>Founder & Developer</p>
            </div>
            <div class="member">
                <img src="image/instagram-cartoon-dp6-1.jpg" alt="Founder 2">
                <h4>Abhishek Vidhate</h4>
                <p>UI/UX Designer</p>
            </div>
            <div class="member">
                <img src="image/download.jpeg" alt="Founder 3">
                <h4>Dipali Vidhate</h4>
                <p>Backend Engineer</p>
            </div>
        </div>
    </div>

</body>
</html>
