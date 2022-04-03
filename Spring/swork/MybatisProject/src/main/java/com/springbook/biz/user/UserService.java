package com.springbook.biz.user;

import java.util.List;

public interface UserService {

	// CRUD 기능의 메소드 구현
	// 회원 등록
	
	void insertUser(UserVO vo);
	
	// 글 수정
	void updateUser(UserVO vo);
		
	// 글 삭제
	void deleteUser(UserVO vo);
	
	public UserVO getUser(UserVO vo);
	
	List<UserVO>getUserList(UserVO vo);
}
