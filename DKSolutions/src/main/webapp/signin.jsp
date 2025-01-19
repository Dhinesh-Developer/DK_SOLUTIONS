<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign in Form</title>
    <style>
        body {
            font-family: 'Roboto', Arial, sans-serif;
            background-color: #121212;
            color: #e0e0e0;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #1e1e1e;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.7);
            width: 100%;
            max-width: 400px;
        }

        h2 {
            color: #1e90ff;
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 12px;
            text-align: left;
        }

        input[type="email"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            background-color: #333;
            color: #e0e0e0;
            border: 1px solid #444;
            border-radius: 5px;
        }

        input[type="email"]:focus, input[type="password"]:focus {
            outline: none;
            border-color: #1e90ff;
        }

        input[type="submit"] {
            background-color: #1e90ff;
            color: #ffffff;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            margin-top: 20px;
        }

        input[type="submit"]:hover {
            background-color: #00bfff;
        }

        .message {
            color: #ff6347;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Sign In</h2>
        <form method="post">
            <table>
                <tr>
                    <td>Enter the Email</td>
                    <td><input type="email" name="uEmail" required></td>
                </tr>
                <tr>
                    <td>Enter the Password</td>
                    <td><input type="password" name="uPassword" required></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="submit" value="Sign In"></td>
                </tr>
            </table>
        </form>

        <%
        if(request.getMethod().equalsIgnoreCase("POST")) {
            String uEmail = request.getParameter("uEmail");
            String uPassword = request.getParameter("uPassword");
            boolean isValid = false;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/solution", "root", "root@dk");

                PreparedStatement pstmt = con.prepareStatement("SELECT * FROM user WHERE uEmail = ? AND uPassword = ?");
                pstmt.setString(1, uEmail);
                pstmt.setString(2, uPassword);

                ResultSet res = pstmt.executeQuery();

                isValid = res.next();
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }

            if(isValid) {
                out.println("<div class='message'>Login successfully</div>");
                try {
                    Thread.sleep(3000);
                    response.sendRedirect("Home.jsp");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else {
                out.println("<div class='message'>Invalid Credentials! Failed to login. Please enter the correct data.</div>");
            }
        }
        %>
    </div>

</body>
</html>
