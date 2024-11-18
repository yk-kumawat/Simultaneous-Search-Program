<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>Login</title>
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
            margin-top: 50px;
            margin-bottom: 60px;
            font-weight: bold;
            color: black;
        }

        #username, #password {
            width: 85%;
            padding: 10px;
            margin: 10px 0;
            background-color: #eee;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }
        #username{
            margin-bottom: 30px;
        }
        #password{
            margin-bottom: 30px;
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
            margin-bottom: 30px;
        }
        form button:hover {
            background-color: #0048ff;
        }
        #lasy-line {
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
                <h1>Welcome Back!</h1>
                <p>To keep connected with us please login with your personal info</p>
            </div>
        </div>
        <div id="form-container">
            <form action="LoginServlet" method="post">
                <h1>Login</h1>
                <%
				String error = request.getParameter("error");
				if(error!=null && error.equals("1")) {
					%> <p style="color: red;">Invalid Username or Password</p> <%
				}
				%>
                <input type="text" placeholder="Username" id="username" name="username" required></input>
                <input type="password" placeholder="Password" id="password" name="password" required></input>
                <button type="submit">Login</button>
                <p id="last-line">Don't have an account? <a href="Register.jsp">Register here</a></p>
            </form>
        </div>
    </div>
		
	</div>
</body>
</html>