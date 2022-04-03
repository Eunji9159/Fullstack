package com.springbook.biz.user;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.springbook.biz.board.BoardVO;
import com.springbook.biz.common.JDBCUtil;
import com.springbook.biz.user.impl.UserDAO;

public class UserServiceClient {

	public static void main(String[] args) {
		// 1. Spring 컨테이너를 구동한다.
//		AbstractApplicationContext container = new GenericXmlApplicationContext("user/userContext.xml");
		AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");
//		UserDAO userDAO = new UserDAO();
//		UserServiceImpl userService = new UserServiceImpl();
//		userService.setUserDAO(userDAO);
		
//		id="userDAO" - UserDAO userDAO = new UserDAO();
		
//		id="userService" - UserServiceImpl userService = new UserServiceImpl();
//		public class UserServiceImpl implements UserService {
//			private UserDAO userDAO = new UserDAO();
//
//			public UserVO getUser(UserVO vo) {
//				return userDAO.getUser(vo);
//			}
//
//			public void setUserDAO(UserDAO userDAO) {
//				this.userDAO = userDAO;
//			}
//		}
		
		// 2. Spring 컨테이너로부터 UserServiceImpl 객체를 Lookup 한다.
		UserService userService = (UserService) container.getBean("userService");
		
		// 3. 로그인 기능 테스트
		UserVO vo = new UserVO();
//		public class UserVO {
//			private String id = "test";
//			private String password = "test1234";
//			private String name = null;
//			private String role = null;
//		}
		
		vo.setId("test");
		vo.setPassword("test1234");
		
		UserVO user = userService.getUser(vo);
//		public class UserVO {
//			private String id = test;
//			private String password = test1234;
//			private String name = 관리자;
//			private String role = Admin;
//		}
		
//		public UserVO getUser(UserVO vo) {
//			return userDAO.getUser(vo);
		
//				public UserVO getUser(UserVO vo) {
//					UserVO user = null;
//					try {
//						System.out.println("===> JDBC로 getUser() 기능 처리");
//						conn = JDBCUtil.getConnection();
//						stmt = conn.prepareStatement(USER_GET);
//						stmt.setString(1,  vo.getId());
//						stmt.setNString(2,  vo.getPassword());
//						rs = stmt.executeQuery();
//						if(rs.next()) {
//							user = new UserVO();
//							user.setId(rs.getString("ID"));
//							user.setPassword(rs.getString("PASSWORD"));
//							user.setName(rs.getString("NAME"));
//							user.setRole(rs.getString("ROLE"));
//						}
//					} catch (Exception e) {
//						e.printStackTrace();
//					} finally {
//						JDBCUtil.close(rs, stmt, conn);
//					} 
//					return user;
//				}
		
//		}
		
		if(user !=null) {
			System.out.println(user.getName() + "님 환영합니다.");
		} else {
			System.out.println("로그인 실패");
		}
		
		// 4. Spring 컨테이너를 종료한다.
		container.close();
		
		
		
		// 1. insert into users values (?,?,?,?);
		
//		boardService.insertBoard(vo);
		
		// 2. update
		
		// 3. delete
		
		// 4. 전체목록 보여주기
		
		// 5. 선택한 아이디 정보만 보여주기
	}

}
