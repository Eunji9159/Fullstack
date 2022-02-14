package com.hi;

import java.sql.*;
import oracle.jdbc.driver.OracleDriver;

public class Ex02 {

	public static void main(String[] args) {
//		String sql="insert into dept (deptno,dname,loc) values (70,'HH','II')";
//		String sql="update dept set dname='한글' where deptno=70";
		String sql="delete from dept where deptno=70";
		String url="jdbc:oracle:thin:scott/tiger@localhost:1521:xe";
		OracleDriver driver=new OracleDriver();
		Connection conn=null;
		Statement stmt=null;
		try {
			DriverManager.registerDriver(driver);;
			conn=DriverManager.getConnection(url);
			stmt=conn.createStatement();
			stmt.executeUpdate(sql);
			System.out.println("완료");
		}
		catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try{
				if(conn!=null)conn.close();
			}
			catch (SQLException e) {
				e.printStackTrace();
			} 
		}
		

	}

}
