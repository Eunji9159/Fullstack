package second;

public class MethodOverloading {//조건:
	private int i;
	private String s;
	private int od;
	
	public void setMD(int i) {
		System.out.print("setMD(int i): "); //7
		this.i = i; //7
	}
	
	public void setMD(String s) { // s값만 초기화
		System.out.print("setMD(String s): ");
		this.s = s; // s값만 초기화
		od = 1;
	}

	public void setMD(int i, String s) { // 2, 둘다 초기화
		System.out.print("setMD(int i, String s): ");
		this.i = i; //2
		this.s = s; //둘다 초기화
		od = 2;
	}
	
	public void setMD(String s, int i) { // 둘다 초기화2, 3
		System.out.print("setMD(String s, int i): ");
		this.i = i;
		this.s = s;
		od = 3;
	}
	
	public String getMD() {
		String str ="";
		switch(od) {
			case 0: str = i+", "+s; break;
			case 1: str = i+", "+s; break;
			case 2: str = i+", "+s; break;
			default : str = s+", "+i; 
		}
		return str;
	}
}
