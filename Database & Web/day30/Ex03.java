package com.hi;

import java.util.Scanner;

public class Ex03 {

	public static void main(String[] args) {
		String sql="insert into dept (deptno,dname,loc) values (";
		Scanner sc=new Scanner(System.in);
		String input=null;
		System.out.print("deptno>");
		input=sc.nextLine();
		sql=sql+input;
		System.out.print("dname>");
		input=sc.nextLine();
		System.out.print("loc>");
		input=sc.nextLine();
	}

}
