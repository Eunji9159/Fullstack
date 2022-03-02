package second;

public class Constructor { 
	private int i;//5
	private String s;//"멤버필드 초기화"
	
	public Constructor(int i, String s) { // 생성자(매개변수 적어준다.)
		this.i = i; //5
		this.s = s; //"멤버필드 초기화"
	}
	
	public void setI(int i) {
		this.i = i;		
	}
	public int getI() {
		return i;	
	}
	
	public void setS(String s) {
		this.s = s;
	}
	
	public String getS() {
		return s; //"멤버필드 초기화"
	}
}
