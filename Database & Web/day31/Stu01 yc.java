package com.hi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

import oracle.jdbc.driver.OracleDriver;

public class Stu01 {

	public static void main(String[] args) {
		// 학생 성적 관리 프로그램(ver 0.9.0)
		// 1.보기 2.입력 3.수정 4.삭제 0.종료>
		
		String url = "jdbc:oracle:thin:scott/tiger@localhost:1521:xe";
		String sql = "";
		OracleDriver driver = new OracleDriver();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
			
		
			Scanner sc = new Scanner(System.in);
			String input = null;
			
			System.out.println("학생 성적 관리 프로그램(ver 0.9.0)");
			
			while(true) {
				System.out.print("1.보기 2.입력 3.수정 4.삭제 0.종료> ");
				input = sc.nextLine();
				
				if(input.equals("0")){
					break;
				}else if(input.equals("1")) {
					try {
						DriverManager.registerDriver(driver);
						conn = DriverManager.getConnection(url);
						stmt = conn.createStatement();
						
						sql = "select * from stu01 order by num asc";
						rs = stmt.executeQuery(sql);
						System.out.println("-----------------------------------------");
						System.out.println("학번\t이름\t국어\t영어\t수학");
						System.out.println("-----------------------------------------");
						while(rs.next()) {
							System.out.print(rs.getObject(1) + "\t");
							System.out.print(rs.getObject(2) + "\t");
							System.out.print(rs.getObject(3) + "\t");
							System.out.print(rs.getObject(4) + "\t");
							System.out.println(rs.getObject(5));
						}
						System.out.println("-----------------------------------------");
					} catch (SQLException e) {
						e.printStackTrace();
					} finally {
						try {
							if(rs != null) rs.close();
							if(stmt != null) stmt.close();
							if(conn != null) conn.close();
						} catch (SQLException e) {
							e.printStackTrace();
						}
					}
				}else if(input.equals("2")) {
					try {
						DriverManager.registerDriver(driver);
						conn = DriverManager.getConnection(url);
						stmt = conn.createStatement();
						
						sql = "insert into stu01 (num, name, kor, eng, math) values (";
						System.out.print("학번> ");
						sql = sql + sc.nextLine() + ", '";
						System.out.print("이름> ");
						sql = sql + sc.nextLine() + "', ";
						System.out.print("국어> ");
						sql = sql + sc.nextLine() + ", ";
						System.out.print("영어> ");
						sql = sql + sc.nextLine() + ", ";
						System.out.print("수학> ");
						sql = sql + sc.nextLine() + ")";
						stmt.executeUpdate(sql);
					} catch (SQLException e) {
						e.printStackTrace();
					} finally {
						try {
							if(rs != null) rs.close();
							if(stmt != null) stmt.close();
							if(conn != null) conn.close();
						} catch (SQLException e) {
							e.printStackTrace();
						}
					}
				}else if(input.equals("3")) {
					try {
						DriverManager.registerDriver(driver);
						conn = DriverManager.getConnection(url);
						stmt = conn.createStatement();
						
						sql = "update stu01 set name = '";
						System.out.print("수정할 학번> ");
						String msg = sc.nextLine();
						System.out.print("이름> ");
						sql = sql + sc.nextLine() + "', kor = ";
						System.out.print("국어> ");
						sql = sql + sc.nextLine() + ", eng = ";
						System.out.print("영어> ");
						sql = sql + sc.nextLine() + ", math = ";
						System.out.print("수학> ");
						sql = sql + sc.nextLine();
						sql = sql + " where num = " + msg;
						stmt.executeUpdate(sql);
					} catch (SQLException e) {
						e.printStackTrace();
					} finally {
						try {
							if(rs != null) rs.close();
							if(stmt != null) stmt.close();
							if(conn != null) conn.close();
						} catch (SQLException e) {
							e.printStackTrace();
						}
					}
				}else if(input.equals("4")) {
					try {
						DriverManager.registerDriver(driver);
						conn = DriverManager.getConnection(url);
						stmt = conn.createStatement();
						
						sql = "delete from stu01 where num = ";
						System.out.print("삭제할 학번> ");
						sql = sql + sc.nextLine();
						stmt.executeUpdate(sql);
					} catch (SQLException e) {
						e.printStackTrace();
					} finally {
						try {
							if(rs != null) rs.close();
							if(stmt != null) stmt.close();
							if(conn != null) conn.close();
						} catch (SQLException e) {
							e.printStackTrace();
						}
					}
				}
			}

	}

}
