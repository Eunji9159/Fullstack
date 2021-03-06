package com.springbook.biz.board;

import java.util.List;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class BoardServiceClient {

	public static void main(String[] args) {
		// 1. Spring 컨테이너를 구동한다.
		AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");
		
		// 2. Spring 컨테이너로부터 BoardServiceImpl 객체를 Lookup한다.
		BoardService boardService = (BoardService) container.getBean("boardService");
		
		// 3. 글 등록 기능 테스트
		BoardVO vo = new BoardVO();
		vo.setSeq(0);
		vo.setWriter("홍길동");
		vo.setContent("임시 내용.............");
		boardService.insertBoard(vo);
		
		
		// 4. 글 목록 검색 기능 테스트
		List<BoardVO> boardList = boardService.getBoardList(vo);
		for(BoardVO board : boardList) {
			System.out.println("---> " + board);
		}
		
		
		//글 수정 작업하기      "update board set title =?, content=? where seq=?";
//		vo.setTitle("수정타이틀입니다.");
//		vo.setContent("수정작업할 글 내용입니다.");
//		vo.setSeq(3);
//		boardService.updateBoard(vo);
		
		//글 삭제 작업하기   "delete from board where seq = ?";
//		vo.setSeq(3);
//		boardService.deleteBoard(vo);
		
//		for(BoardVO board : boardList) {
//	       System.out.println("-----> "+board);
//	    }

		//글 하나만 선택해서 조회하기   "select * from board where seq=?";
//		vo.setSeq(2);
//		System.out.println(boardService.getBoard(vo));
		
		container.close();
	}

}
