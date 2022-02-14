package com.hi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Ex01 {

	public static void main(String[] args) {
		String url="jdbc:oracle:thin:scott/tiger@localhost:1521:xe";
		String sql="select * from dept order by deptno desc";
		oracle.jdbc.driver.OracleDriver driver;
		driver = new oracle.jdbc.driver.OracleDriver();
		
		Connection conn = null;
		java.sql.Statement stmt=null;
		java.sql.ResultSet rs=null;
		try {
			java.sql.DriverManager.registerDriver(driver);
			conn = DriverManager.getConnection(url);
			stmt=conn.createStatement();
			stmt.executeQuery(sql);
			rs=stmt.executeQuery(sql);
			while(rs.next()) {
				System.out.println(rs.getObject(1)+"\t");
				System.out.println(rs.getObject(2)+"\t");
				System.out.println(rs.getObject(3));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
		
	
