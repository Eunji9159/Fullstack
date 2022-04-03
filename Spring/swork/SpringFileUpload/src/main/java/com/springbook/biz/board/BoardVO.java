package com.springbook.biz.board;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

// VO(Value Object)
public class BoardVO {

	private int seq;
	private String title;
	private String writer;
	private String content;
	private Date regDate;
	private int cnt;
	
	private String searchCondition;
	private String searchKeyword;
	
	private MultipartFile uploadFile;
	private String fileName;//아 여기 말하는거죵....??네네 이거랑 쿼리문이랑 똑같아야해요하악,, 그리고 또 맞춰줘야하는 게 있나요...?ㅋㅋㅋ
	//아니요 ㅋㅋㅋ ㅋㅋㅋㅋㅋ근데 이거,, 왤케 대유잼이죠,,ㅎㅋㅋㅋㅋㅋ넘ㅇ유잼..ㅋㅋㅋㅋ일단 한번 실행해볼게요옹...ㅎㅋfildName,, 컬럼명과 필드명 일치 시켜야 해요..그 보드다오랑 보드스프링에 있는 쿼리문에서는 fileName이라고 한거 아닌가용...? 네네 지금 fileName 아닌가요..?
	
	
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getSearchCondition() {
		return searchCondition;
	}
	@Override
	public String toString() {
		return "BoardVO [seq=" + seq + ", title=" + title + ", writer=" + writer + ", content=" + content + ", regDate="
				+ regDate + ", cnt=" + cnt + "]";
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

}
