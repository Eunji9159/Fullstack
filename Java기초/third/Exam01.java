package third;

interface Inter{
	void str();
}

interface Inter2{
	void str2();
}

class Parent1 {
	public int a = 10;
	public int b = 20;
	
	void display() {
		System.out.println(a);
		System.out.println(b);
	}
}

class Child1 extends Parent1 implements Inter , Inter2 { // 상속 -> Parent1 클래스 | Inter , Inter2 인터페이스
	private String a = "a변수 오버라이딩";
	
	Child1(){
		super();
	}
	
	void display() {
//		System.out.println(super.a);
		System.out.println(a); // a변수 오버라이딩
		System.out.println(b); // 20
	}
	
	@Override
	public void str() {
		System.out.println("Inter의 str() 재정의");
	}
	
	@Override
	public void str2() {
		System.out.println("Inter2의 str2() 재정의");
	}
}

public class Exam01 {
	public static void main(String[] args) {
		Child1 ch = new Child1();
		System.out.println("Child1객체 생성");
		ch.display();
		ch.str();
		System.out.println("======================\n\n");
		
		Parent1 p1 = new Parent1();
		System.out.println("p1객체 생성");
		p1.display();
		System.out.println("======================\n\n");
		
		Parent1 p2 = new Child1();
		System.out.println("p2객체 생성");
		p2.display();
//		p2.str();
		System.out.println("======================\n\n");
		
		Inter p3 = new Child1();
		System.out.println("p3객체 생성");
		p3.str();
//		p3.str2();
		System.out.println("======================\n\n");
	}
}