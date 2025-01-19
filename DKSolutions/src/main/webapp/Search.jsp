<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dk's AI</title>
    <style>
        body {
            font-family: 'Roboto', Arial, sans-serif;
            background-color: #121212;
            color: #e0e0e0;
            margin: 0;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            height: 100vh;
        }
        
        /* Navbar styling */
        .navbar {
            background-color: #333;
            padding: 15px 0;
            width: 100%;
            text-align: center;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
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

        /* Form container */
        form {
            background-color: #1e1e1e;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.7);
            width: 100%;
            max-width: 500px;
            margin: 80px auto; /* Adjusted for spacing due to fixed navbar */
            text-align: center;
        }

        h2 {
            color: #1e90ff;
            margin-bottom: 20px;
        }

        label {
            font-size: 1.2em;
            color: #e0e0e0;
            margin-bottom: 10px;
            display: block;
        }

        input[type="text"] {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            background-color: #333;
            color: #e0e0e0;
            border: 1px solid #444;
            border-radius: 5px;
            font-size: 1.1em;
        }

        input[type="text"]:focus {
            outline: none;
            border-color: #1e90ff;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #1e90ff;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #00bfff;
        }

        /* Footer styling */
        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px;
            font-size: 0.9em;
        }

    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <h1>Dk's AI</h1>
        <ul>
            <li><a href="Search.jsp">Search</a></li>
            <li><a href="signin.jsp">Sign In</a></li>
            <li><a href="signup.jsp">Sign Up</a></li>
        </ul>
    </div>

    <!-- Form Container -->
    <form action="Solutions.jsp" method="POST">
        <h2>Search Questions</h2>
        <label for="qTitle">Ask Me Anything About Java</label>
        <input type="text" id="qTitle" name="qTitle" required>
        <button type="submit">Search</button>
    </form>

    <!-- Footer -->
    <footer>
        <p>&copy; 2025 Dk's AI. All rights reserved.</p>
    </footer>

</body>
</html>
