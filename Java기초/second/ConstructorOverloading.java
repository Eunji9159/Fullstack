package second;

public class ConstructorOverloading {
	private int i;
	private String s;
	
	public ConstructorOverloading() {//디폴트 생성자
		System.out.println("ConstructorOverloading(): "+i+", s: "+s);
	}
	
	public ConstructorOverloading(int i) {
		System.out.println("ConstructorOverloading(int i): "+i+", s: "+s);
	}
	
	public ConstructorOverloading(String s) {
		System.out.println("ConstructorOverloading(String s): "+s+", i: "+i);
	}
	
	public ConstructorOverloading(int i, String s) {
		System.out.println("ConstructorOverloading(int i, String s): "+i+", s: "+s);
	}
	
	public ConstructorOverloading(String s, int i) {
		System.out.println("ConstructorOverloading(String s, int i): "+s+", i: "+i);
	}
}
