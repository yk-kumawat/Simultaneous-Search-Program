<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap" rel="stylesheet">
<style>
@charset "UTF-8";
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html, body {
    height: 100%;
}

body {
	font-family: 'Montserrat', sans-serif;
    background-color: #f0f2f5;
    color: #333;
    text-align: center;
    display: flex;
    flex-direction: column;
    min-height: 100vh;
}

nav {
    background-color: #007BFF;
    padding: 15px 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    position: relative;
}

nav .logo {
    font-size: 1.5em;
    color: #fff;
    font-weight: 600;
}

.nav-links {
    list-style: none;
}

.nav-links li {
    display: inline-block;
    margin: 0 15px;
    position: relative;
}

.nav-links a {
    color: #fff;
    text-decoration: none;
    font-weight: 400;
    cursor: pointer;
}

header {
    padding: 50px 20px;
    background-color: #007BFF;
    color: #fff;
}

header h1 {
    font-size: 3em;
    margin-bottom: 10px;
}

header p {
    font-size: 1.2em;
    margin-top: 10px;
}

.input-section, .search-section {
    margin: 30px 0;
}

.search-section {
    margin-bottom: 10px;
}

input, button {
    padding: 12px;
    font-size: 16px;
    margin: 10px;
    border-radius: 10px;
    border: 2px solid #007BFF;
    outline: none;
}

input {
    width: 250px;
}

button {
    background-color: #007BFF;
    color: #fff;
    border: none;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #0048ff;
}

#createIframesBtn {
    width: 150px;
}

.iframe-container {
    display: flex;
    justify-content: space-evenly;
    gap: 20px;
    margin-top: 10px;
    margin-bottom: 30px;
}
    #container {
        text-align: center;
    }
    .icon {
        width: 50px;
        height: 50px;
        cursor: pointer;
        margin: 10px;
    }
    iframe {
        width: 80%;
        height: 500px;
        margin-top: 20px;
        border: 2px solid #ddd;
    }

iframe {
    width: 45%;
    height: 400px;
    border: 1px solid #007BFF;
    border-radius: 10px;
}

footer {
    background-color: #007BFF;
    color: #fff;
    padding: 20px 0;
    text-align: center;
    margin-top: auto;
    width: 100%;
}

footer p {
    margin: 0;
}

.website-list-dropdown {
    position: absolute;
    font-size: small;
    top: 100%;
    right: 5px;
    background-color: white;
    border: 1px solid #ddd;
    border-radius: 5px;
    padding: 10px;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    width: fit-content;
    z-index: 1000;
}

.website-list-dropdown ul {
    list-style-type: none;
    padding: 0;
}

#websiteList li {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.copy-btn {
    padding: 6px 12px;
    font-size: 10px;
    background-color: #007BFF;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

</style>
<title>Simultaneous Search Program</title>
</head>
<body>
	<nav>
<%
	HttpSession session1 = request.getSession(false);
	if(session1 != null && session1.getAttribute("username") != null){
		String username = (String) session1.getAttribute("username");
		%>
			<div class="logo">Welcome <%= username %>!</div>
		<%
	} else {
		response.sendRedirect("Login.jsp");
	}
%>
	<ul class="nav-links">
            <li><a href="#">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Contact</a></li>
            <li>
                <a href="#" id="toggleWebsiteList" onclick="console.log('Button clicked!')">Website List</a>
            </li>
            <div id="websiteListDropdown" class="website-list-dropdown" style="display: none;">
                <ul id="websiteList">
                    <li>
                        <span>https://www.wikipedia.org/</span>
                        <button class="copy-btn" onclick="copyText(this)">Copy</button>
                    </li>
                    <li>
                        <span>https://www.pexels.com/</span>
                        <button class="copy-btn" onclick="copyText(this)">Copy</button>
                    </li>
                    <li>
                        <span>https://www.economist.com/</span>
                        <button class="copy-btn" onclick="copyText(this)">Copy</button>
                    </li>
                </ul>
            </div>
    </ul>
    </nav>
    
    <header>
        <h1>Simultaneous Search Program</h1>
        <p>Search multiple websites at once with ease.</p>
    </header>

    <section class="input-section">
        <label for="iframeCount">Number of websites:</label>
        <input type="number" id="iframeCount" min="1" placeholder="Enter number">
        <button id="createSrcInputsBtn" class="btn">Generate Inputs</button>
    </section>

    <div id="srcInputContainer" class="dynamic-inputs"></div>
    <div id="create-windows">
        <button id="createIframesBtn" style="display:none;" class="btn main-btn">Create Windows</button>
    </div>

    

    <section class="search-section">
        <input type="text" id="searchQuery" placeholder="Search term">
        <button onclick="search()" class="btn">Search</button>
    </section>
    
    

    <div id="iframeContainer" class="iframe-container"></div>

    <footer>
        <p>© 2024 Simultaneous Search Program. All Rights Reserved.</p>
    </footer>


	<script src="script.js"></script>
</body>
</html>