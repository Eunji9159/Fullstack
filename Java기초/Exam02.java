package third;

abstract class Shape01 { // abstract 추상클래스
	public abstract void draw(); // 구현은 하지 않는다.
}

class Circle extends Shape01 { // 상속 -> Shape01 추상클래스
	@Override
	public void draw() {
		System.out.println("원을 그리다.");
	}
}

class Child2 extends Shape01 { // 상속 -> Shape01 추상클래스
	public int c = 30;
	public void display() {
		System.out.println(c);
	}
	
	@Override
	public void draw() {
		System.out.println("Child2를 생성하다.");		
	}
} 
public class Exam02 {
	public static void main(String[] args) {
		Shape01 ref = new Circle();
		ref.draw();
		ref = new Child2();
//		ref.display();
		
		Child2 ch = new Child2();
		ch.display();
	}
}