package com.springbook.biz.user.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

import com.springbook.biz.common.JDBCUtil;
import com.springbook.biz.user.UserVO;

@Repository("userDAO")
public class UserDAO {

	// JDBC 관련 변수
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;

	// SQL 명령어들
	private final String USER_GET = "select * from users where id=? and password=?";
	
	// CRUD 기능의 메소드 구현
	// 회원 등록
	public UserVO getUser(UserVO vo) {
//		public class UserVO {
//			private String id = "test";
//			private String password = "test1234";
//			private String name = null;
//			private String role = null;
//		}
		
		UserVO user = null;
		try {
			System.out.println("===> JDBC로 getUser() 기능 처리");
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(USER_GET); // select * from users where id=?and password=?
			stmt.setString(1,  vo.getId()); // test
			stmt.setString(2,  vo.getPassword()); // 1234
			rs = stmt.executeQuery(); // select * from users where id=test and password=1234
			if(rs.next()) {
				//  id    | password | name | role
				//  test  | test1234 | 관리자 | Admin
				user = new UserVO();
	//				public class UserVO {
	//					private String id = null;
	//					private String password = null;
	//					private String name = null;
	//					private String role = null;
	//				}
				
				user.setId(rs.getString("ID")); // test
				user.setPassword(rs.getString("PASSWORD")); // test1234
				user.setName(rs.getString("NAME")); // 관리자
				user.setRole(rs.getString("ROLE")); // Admin
	//				public class UserVO {
	//					private String id = test;
	//					private String password = test1234;
	//					private String name = 관리자;
	//					private String role = Admin;
	//				}
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		} 
		return user;
	}
}
