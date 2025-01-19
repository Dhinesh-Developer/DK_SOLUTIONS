<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Solutions</title>
</head>
<body>
    <h2>Search Results</h2>

    <%
        String qTitle = request.getParameter("qTitle");
        
        if(qTitle != null && !qTitle.trim().isEmpty()) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/solution", "root", "root@dk");

                // Query to fetch questions and answers based on qTitle
                String query = "SELECT q.qId, q.qTitle, q.qDescription, a.content FROM question q " +
                               "JOIN answer a ON q.qId = a.qId WHERE q.qTitle LIKE ?";
                PreparedStatement pstmt = con.prepareStatement(query);
                pstmt.setString(1, "%" + qTitle + "%");
                
                ResultSet res = pstmt.executeQuery();
                
                

                // Display the results
                if(res.next()) {
    %>
                    <table border="1">
                        <tr>
                            <th>Question Title</th>
                            <th>Description</th>
                            <th>Answer</th>
                        </tr>
                        <%
                            do {
                        %>
                            <tr>
                                <td><%= res.getString("qTitle ") %></td>
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
                con.close(); // Close the connection
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }
        }
    %>

</body>
</html>
