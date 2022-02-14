package com.hi;

import java.sql.*;
import java.util.Scanner;

import oracle.jdbc.OracleDriver;

public class Stu01 {

	public static void main(String[] args) {
		// �л������������α׷�(ver 0.9.0)
		// 1.����(day29-Ex01) 2.�Է�(day30-Ex03) 3.���� 4.���� 0.����>
		OracleDriver driver=new OracleDriver();
		Connection conn=null; 
		Statement stmt=null; 
		ResultSet rs=null; 
		String url="jdbc:oracle:thin:scott/tiger@localhost:1521:xe";
		Scanner sc=new Scanner(System.in);
		System.out.println("�л������������α׷�(ver 0.9.0)");
		String input=null;
		
		while(true) {
			System.out.println("1.����(day29-Ex01) 2.�Է�(day30-Ex03) 3.���� 4.���� 0.����>");
			input=sc.nextLine();
			if(input.equals("0")) break;
			if(input.equals("1")) {
				System.out.println("------------------------------------------");
				System.out.println("�й�\t�̸�\t����\t����\t����");
				System.out.println("------------------------------------------");
				String sql="select * from stu01 order by num asc";
				try {
					DriverManager.registerDriver(driver); // ����̹� ���
					conn=DriverManager.getConnection(url); // ����̹��Ŵ����� ���� url�� ����. ����̹��Ŵ����� ���ؼ� url�� Ŀ�ؼǽ�Ų��.
					stmt=conn.createStatement(); // ������ �� �� Statement ��ü�� ����
					rs=stmt.executeQuery(sql); // �������� ���ؼ� �޾ƿ� ����� ��ȯ�Ѵ�. (��´�) ���� ���ؼ� �ҷ��� ���� rs
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
				System.out.print("�й�>");
				String num=sc.nextLine();
				System.out.print("�̸�>");
				String name=sc.nextLine();
				System.out.print("����>");
				String kor=sc.nextLine();
				System.out.print("����>");
				String eng=sc.nextLine();
				System.out.print("����>");
				String math=sc.nextLine();
				String sql="insert into stu01 values ("+num+","+name+","+kor+","+eng+","+math+")";
				try {
					DriverManager.registerDriver(driver); // ����̹� ���
					conn=DriverManager.getConnection(url); // ����̹��Ŵ����� ���� url�� ����. ����̹��Ŵ����� ���ؼ� url�� Ŀ�ؼǽ�Ų��.
					stmt=conn.createStatement(); // ������ �� �� Statement ��ü�� ����
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
						System.out.print("�й�>");
						String num=sc.nextLine();
						System.out.print("�̸�>");
						String name=sc.nextLine();
						System.out.print("����>");
						String kor=sc.nextLine();
						System.out.print("����>");
						String eng=sc.nextLine();
						System.out.print("����>");
						String math=sc.nextLine();
						String sql="update into stu01 values ("+num+","+name+","+kor+","+eng+","+math+")";
						try {
							DriverManager.registerDriver(driver); // ����̹� ���
							conn=DriverManager.getConnection(url); // ����̹��Ŵ����� ���� url�� ����. ����̹��Ŵ����� ���ؼ� url�� Ŀ�ؼǽ�Ų��.
							stmt=conn.createStatement(); // ������ �� �� Statement ��ü�� ����
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
							System.out.print("�й�>");
							String num=sc.nextLine();
							String sql=update ���̺�� set �÷���=��,... where ����;
							try {
								DriverManager.registerDriver(driver); // ����̹� ���
								conn=DriverManager.getConnection(url); // ����̹��Ŵ����� ���� url�� ����. ����̹��Ŵ����� ���ؼ� url�� Ŀ�ؼǽ�Ų��.
								stmt=conn.createStatement(); // ������ �� �� Statement ��ü�� ����
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
						
					
	

		����
		-- delete from ���̺�� where ����;
		delete from dept where deptno=50 and dname='aaaa';

		-- ����
		-- update ���̺�� set �÷���=��,... where ����;
		update dept set dname='AA',loc='BB' where deptno=50;


	}

}
