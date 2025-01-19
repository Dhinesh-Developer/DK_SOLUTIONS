<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>DK's Java Solutions</title>
    <style>
        body {
            font-family: 'Roboto', Arial, sans-serif;
            background-color: #121212;
            color: #e0e0e0;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            height: 100%;  /* Change from 100vh to 100% to prevent overflow */
            justify-content: space-between;
            overflow-x: hidden; /* Prevent horizontal overflow */
        }

        /* Navbar styling */
        .navbar {
            background-color: #333;
            padding: 15px 0;
            width: 100%;
            text-align: center;
            flex: 0 1 10%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar h1 {
            color: #fff;
            font-size: 28px;
            font-weight: 600;
            margin: 0;
            text-transform: uppercase;
        }

        .navbar ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
        }

        .navbar ul li {
            margin-right: 20px;
        }

        .navbar ul li a {
            color: #e0e0e0;
            text-decoration: none;
            font-size: 18px;
            padding: 10px 15px;
            border-radius: 5px;
            text-transform: uppercase;
        }

        .navbar ul li a:hover {
            background-color: #1e90ff;
            color: white;
        }

        /* Container for content */
        .container {
            background-color: #1e1e1e;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.7);
            width: 90%; /* Adjusted to 90% to ensure alignment */
            max-width: 1200px; /* Maximum width for the content */
            margin: 20px auto;
            text-align: center;
            flex: 1 1 auto;
            overflow-y: auto;  /* Prevents vertical overflow */
        }

        h1 {
            color: #1e90ff;
            margin-bottom: 20px;
            text-transform: uppercase;
        }

        h2 {
            color: #00bfff;
            margin-top: 20px;
        }

        p {
            font-size: 1.1em;
            color: #e0e0e0;
            line-height: 1.6;
            text-transform: uppercase;
        }

        /* Goal Section */
        .goal {
            background-color: #333;
            padding: 20px;
            border-radius: 8px;
            margin-top: 40px;
            width: 100%;
            box-sizing: border-box;
            text-align: center;
        }

        /* Founder Section */
        .founder {
            background-color: #444;
            padding: 20px;
            border-radius: 8px;
            margin-top: 20px;
            width: 100%;
            box-sizing: border-box;
            text-align: center;
        }

        .founder img {
            max-width: 150px;
            border-radius: 50%;
            margin-bottom: 15px;
        }

        .founder p {
            margin-bottom: 10px;
        }

        /* Animation for moving text */
        .moving-text {
            font-size: 22px;
            color: #1e90ff;
            font-weight: bold;
            animation: moveText 10s linear infinite;
        }

        @keyframes moveText {
            0% {
                transform: translateX(100%);
            }
            100% {
                transform: translateX(-100%);
            }
        }

        /* Footer styling */
        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px;
            flex: 0 1 10%;
        }

    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <h1>DK's Java Solutions</h1>
        <ul>
            <li><a href="Search.jsp">Search</a></li>
            <li><a href="signin.jsp">Sign In</a></li>
            <li><a href="signup.jsp">Sign Up</a></li>
        </ul>
    </div>

    <!-- Content -->
    <div class="container">
        <h1>Welcome to DK's Java Solutions</h1>
        <p>DK's Java Solutions is a comprehensive platform where developers, learners, and professionals can come together to share knowledge, solve problems, and discuss ideas. Our mission is to help you find the right solutions for your Java-related queries with a focus on quality and accurate answers.</p>

        <div class="moving-text">
            <p>5000+ solutions in one platform. Your go-to place for all Java-related problems!</p>
        </div>

        <div class="goal">
            <h2>Our Goal</h2>
            <p>At DK's Java Solutions, we aim to provide a community-driven platform where users can easily search for Java solutions, ask questions, and share answers. With over 5000 solutions available, our goal is to create a knowledge hub that caters to the needs of Java enthusiasts and developers. Whether you're a beginner or an experienced coder, our platform ensures that you can find reliable and helpful resources for solving coding challenges.</p>
            <p>Our platform is designed to foster collaboration, encourage learning, and provide answers to the most common and complex Java problems. By continually updating our database with new solutions, we strive to remain at the forefront of Java problem-solving resources.</p>
        </div>

        <div class="founder">
            <img alt="Founder image" src="images/profile.jpg">
            <h2>Founder & CEO: DhineshKumar</h2>
            <p>DK's Java Solutions was founded by DhineshKumar M, a passionate Java developer who is dedicated to helping others master the language. With years of experience in the industry, Dhinesh recognized the need for a reliable and easy-to-navigate platform where developers could find accurate and detailed solutions for Java-related problems.</p>
            <p>Dhinesh's vision for DK's Java Solutions is to make it the go-to destination for Java developers of all skill levels, ensuring that everyone has access to the resources they need to grow in their programming journey.</p>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2025 DK's Java Solutions. All rights reserved.</p>
    </footer>

</body>
</html>
