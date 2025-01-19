package com.DhineshDeveloper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.apache.jasper.tagplugins.jstl.core.Catch;

public class test {

	public static void main(String[] args) {
		
//		try {
//			  String query = "SELECT q.qId, q.qTitle, q.qDescription, a.content AS answerContent " +
//                      "FROM question q " +
//                      "LEFT JOIN answer a ON q.qId = a.qId";
//			Class.forName("com.mysql.cj.jdbc.Driver");
//			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/solution","root","root@dk");
//			Statement stmt = con.createStatement();
//			ResultSet res = stmt.executeQuery(query);
//			while(res.next()) {
//				int qId = res.getInt("qId");
//				String qName = res.getString("qName");
//				String qDescription = res.getString("qDescription");
//				String answerContent = res.getString("answerContent");
//			}
//			
//			
//		} catch (ClassNotFoundException | SQLException e) {
//			e.printStackTrace();
//		}
//		
		
//	if(request.getMethod().equalsIgnoreCase("POST"))
//	{
//		String qTilte = request.getParameter("qTitle");
//		try {
//			Class.forName("com.mysql.cj.jdbc.Driver");
//			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/solution","root","root@dk");
//			PreparedStatement pstmt = con.prepareStatement("select * from question,answer where sTilte like ?");
//			pstmt.setString(1, sTitle);
//			ResultSet res = pstmt.executeQuery();
//			while(res.next()) {
//				String qTitle = res.getString("qTitle");
//				String qDescription = res.getString("qDescription");
//				String content = res.getString("cotnent");
//			}
//		} catch (ClassNotFoundException | SQLException e) {
//			e.printStackTrace();
//		}
//			

		
		
		
		
		
		
		
		
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/solution","root","root@dk");
				PreparedStatement pstmt = con.prepareStatement("insert into user(uName,uEmail,uPassword) values (?,?,?)");
				pstmt.setString(0, null);
				
				
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
		
		
	}


