<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap" rel="stylesheet">
<title>Register</title>
<style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        html, body {
            height: 100%;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f6f5f7;
            font-family: 'Montserrat', sans-serif;
        }
        #container{
            position: relative;
            background-color: #fff;
            height: 500px;
            width: 800px;
            display: flex;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25),
                        0 10px 10px rgba(0, 0, 0, 0.22);
        }
        #side-box{
            background-color: #007BFF;
            height: 500px;
            width: 400px;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        #box-content{
            width: 75%;
            color: #fff;
        }
        #box-content h1{
            margin-bottom: 20px;
        }
        #form-container{
            height: 500px;
            width: 400px;
            padding: 30px;
            text-align: center;
            display: flex;
            justify-content: center;
        }
        form h1 {
            margin-top: 40px;
            margin-bottom: 50px;
            font-weight: bold;
            color: black;
        }

        #username, #password, #email{
            width: 85%;
            padding: 10px;
            margin: 10px 0;
            background-color: #eee;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }
        #username{
            margin-bottom: 10px;
        }
        #password{
            margin-bottom: 20px;
        }
        form button {
            width: 40%;
            padding: 10px;
            background-color: #007BFF;
            border: none;
            color: white;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            margin-bottom: 20px;
        }
        form button:hover {
            background-color: #0048ff;
        }
        form p {
            margin-top: 10px;
        }
        form p a{
            text-decoration: none;
            color: #007BFF;
        }
</style>
</head>
<body>
    <div id="container">
        <div id="side-box">
            <div id="box-content">
                <h1>Hello, Friend!</h1>
                <p>Enter your personal details and start journey with us</p>
            </div>
        </div>
        <div id="form-container">
            <form action="RegisterServlet" method="post">
                <h1>Register</h1>
                <input type="text" id="username" name="username" placeholder="Username"></input>
                <input type="email" id="email" name="email" placeholder="Email"></input>
                <input type="password" id="password" name="password" placeholder="Password"></input>
                <button type="submit">Register</button>
                <p>Already have an account? <a href="Login.jsp">Login here</a></p>
            </form>
        </div>
    </div>
</body>
</html>