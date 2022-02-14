package com.hi;

import java.sql.*;
import java.util.Scanner;

import oracle.jdbc.OracleDriver;

public class Stu01 {

	public static void main(String[] args) {
		// 학생성적관리프로그램(ver 0.9.0)
		// 1.보기(day29-Ex01) 2.입력(day30-Ex03) 3.수정 4.삭제 0.종료>
		OracleDriver driver=new OracleDriver();
		Connection conn=null; 
		Statement stmt=null; 
		ResultSet rs=null; 
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
				try {
					DriverManager.registerDriver(driver); // 드라이버 등록
					conn=DriverManager.getConnection(url); // 드라이버매니저를 통해 url과 연결. 드라이버매니저를 통해서 url로 커넥션시킨다.
					stmt=conn.createStatement(); // 연결을 한 후 Statement 객체를 생성
					rs=stmt.executeQuery(sql); // 쿼리문을 통해서 받아온 결과를 반환한다. (담는다) 보기 위해서 불러온 것이 rs
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
						if(rs!=null)rs.close();
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
				try {
					DriverManager.registerDriver(driver); // 드라이버 등록
					conn=DriverManager.getConnection(url); // 드라이버매니저를 통해 url과 연결. 드라이버매니저를 통해서 url로 커넥션시킨다.
					stmt=conn.createStatement(); // 연결을 한 후 Statement 객체를 생성
					stmt.executeUpdate(sql);
				} catch (SQLException e) {
					e.printStackTrace();
					finally {
						try {
							if(stmt!=null)stmt.close();
							if(conn!=null)conn.close();
						} catch (SQLException e) {
							e.printStackTrace();
						}
					}
			}else if(input.contentEquals("3")) {
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
						String sql="update into stu01 values ("+num+","+name+","+kor+","+eng+","+math+")";
						try {
							DriverManager.registerDriver(driver); // 드라이버 등록
							conn=DriverManager.getConnection(url); // 드라이버매니저를 통해 url과 연결. 드라이버매니저를 통해서 url로 커넥션시킨다.
							stmt=conn.createStatement(); // 연결을 한 후 Statement 객체를 생성
							stmt.executeUpdate(sql);
						} catch (SQLException e) {
							e.printStackTrace();
							finally {
								try {
									if(stmt!=null)stmt.close();
									if(conn!=null)conn.close();
								} catch (SQLException e) {
									e.printStackTrace();
								}
							}
				}else if(input.contentEquals("4")) {
							System.out.print("학번>");
							String num=sc.nextLine();
							String sql=update 테이블명 set 컬럼명=값,... where 조건;
							try {
								DriverManager.registerDriver(driver); // 드라이버 등록
								conn=DriverManager.getConnection(url); // 드라이버매니저를 통해 url과 연결. 드라이버매니저를 통해서 url로 커넥션시킨다.
								stmt=conn.createStatement(); // 연결을 한 후 Statement 객체를 생성
								stmt.executeUpdate(sql);
							} catch (SQLException e) {
								e.printStackTrace();
								finally {
									try {
										if(stmt!=null)stmt.close();
										if(conn!=null)conn.close();
									} catch (SQLException e) {
										e.printStackTrace();
									}
								}
						
					
	

		삭제
		-- delete from 테이블명 where 조건;
		delete from dept where deptno=50 and dname='aaaa';

		-- 수정
		-- update 테이블명 set 컬럼명=값,... where 조건;
		update dept set dname='AA',loc='BB' where deptno=50;


	}

}
