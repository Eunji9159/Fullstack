package third;

interface Drawable { // 인터페이스
	final int ab = 5; // 상수
	public abstract void draw(); // 선언만 하고 상속받아서 구현해라 (오버라이딩)
}

abstract class Shape{ // 추상클래스
	public double res = 0;
	
	public Shape() {
		System.out.println("출력");
	}

	public abstract double area(); // 추상메서드  // 선언만 하고 상속받아서 구현해라 (오버라이딩)
	
	public void printArea() {
		System.out.println( "면적은 " + res );
	}
}

class Rectangle extends Shape implements Drawable { // 상속 -> Shape 추상클래스 | Drawable 인터페이스
	public int w = 10, h = 10;
	
	@Override
	public double area() {
		res = w * h;
		return res;
	}

	public void draw() {
		System.out.println("사각형을 그리다.");
	}
}

public class Exam03 {
	public static void main(String[] args) {
//		Rectangle ref = null;
//		ref = new Rectangle();
		Rectangle ref = new Rectangle();
		double a = ref.area();
		System.out.println(a);
		ref.printArea();
		ref.draw();
		System.out.println("인터페이스 ab값: "+ref.ab);  
	}
}