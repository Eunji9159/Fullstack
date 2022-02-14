package com.hi;

import java.sql.*;
import oracle.jdbc.driver.OracleDriver;

public class Ex02_copy {

	public static void main(String[] args) {
		String sql="delete from dept where deptno=70";
		String url="jdbc:oracle:thin:scott/tiger@localhost:1521:xe";
		OracleDriver driver=new OracleDriver();
		Connection conn=DriverManager.getConnection(url);
		Statement stmt=conn.createStatement();
		DriverManager.registerDriver(driver);;
		stmt.executeUpdate(sql);

	}

}
