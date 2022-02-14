package com.hi;

import java.sql.*;
import java.util.Scanner;

import oracle.jdbc.OracleDriver;

public class Stu01 {

	public static void main(String[] args) {
		// 학생성적관리프로그램(ver 0.9.0)
		// 1.보기(day29-Ex01) 2.입력(day30-Ex03) 3.수정 4.삭제 0.종료>
		String url="jdbc:oracle:thin:scott/tiger@localhost:1521:xe";
		Scanner sc=new Scanner(System.in);
		System.out.println("학생성적관리프로그램(ver 0.9.0)");
		String input=null;
		while(true) {
			System.out.println("1.보기(day29-Ex01) 2.입력(day30-Ex03) 3.수정 4.삭제 0.종료>");
			input=sc.nextLine();
			if(input.equals("0")) break;
			if(input.equals("1")) {
				System.out.println("------------------------------------------");
				System.out.println("학번\t이름\t국어\t영어\t수학");
				System.out.println("------------------------------------------");
				String sql="select * from stu01 order by num asc";
				
				OracleDriver driver=new OracleDriver();
				Connection conn=null;
				Statement stmt=null;
				ResultSet rs=null;
				try {
					DriverManager.registerDriver(driver);
					conn=DriverManager.getConnection(url);
					stmt=conn.createStatement();
					rs=stmt.executeQuery(sql);
					while(rs.next()) {
						System.out.print(rs.getObject(1)+"\t");
						System.out.print(rs.getObject(2)+"\t");
						System.out.print(rs.getObject(3)+"\t");
						System.out.print(rs.getObject(4)+"\t");
						System.out.println(rs.getObject(5));
					}
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					try {
						if(stmt!=null)stmt.close();
						if(conn!=null)conn.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			
				System.out.println("------------------------------------------");
			}else if(input.contentEquals("2")) {
				System.out.print("학번>");
				String num=sc.nextLine();
				System.out.print("이름>");
				String name=sc.nextLine();
				System.out.print("국어>");
				String kor=sc.nextLine();
				System.out.print("영어>");
				String eng=sc.nextLine();
				System.out.print("수학>");
				String math=sc.nextLine();
				String sql="insert into stu01 values ("+num+","+name+","+kor+","+eng+","+math+")";
				
				
					}
				}
			}
		
		}
		
	


