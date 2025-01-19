<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Solutions</title>
    <style>
        body {
            font-family: 'Roboto', Arial, sans-serif;
            background-color: #121212;
            color: #e0e0e0;
            padding: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #1e1e1e;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.7);
        }
        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #444;
        }
        th {
            background-color: #333;
        }
        tr:nth-child(even) {
            background-color: #2c2c2c;
        }
        tr:hover {
            background-color: #444;
        }
    </style>
</head>
<body>
    <h2>Search Results</h2>

    <%
        String qTitle = request.getParameter("qTitle");
        
        if(qTitle != null && !qTitle.trim().isEmpty()) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/solution", "root", "root@dk");

                String query = "SELECT q.qId, q.qTitle, q.qDescription, a.content FROM question q " +
                               "JOIN answer a ON q.qId = a.qId WHERE q.qTitle LIKE ?";
                PreparedStatement pstmt = con.prepareStatement(query);
                pstmt.setString(1, "%" + qTitle + "%");
                
                ResultSet res = pstmt.executeQuery();

                if(res.next()) {
    %>
                    <table>
                        <tr>
                            <th>Question Title</th>
                            <th>Description</th>
                            <th>Answer</th>
                        </tr>
                        <%
                            do {
                        %>
                            <tr>
                                <td><%= res.getString("qTitle") %></td>
                                <td><%= res.getString("qDescription") %></td>
                                <td><%= res.getString("content") %></td>
                            </tr>
                        <%
                            } while(res.next());
                        %>
                    </table>
    <%
                } else {
    %>
                    <p>No results found for the search.</p>
    <%
                }
                con.close();
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }
        }
    %>

</body>
</html>
