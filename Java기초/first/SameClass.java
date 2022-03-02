package first;

public class SameClass {
	
	String var="메인클래스의 멤버 변수는 같은 클래스 내에서라도 직접 접근 불가";
	
	public static void main(String[] args) {
		
		SamePackage sp=new SamePackage();
		
		System.out.println(sp.sameVar);
		System.out.println(sp.defaultStr());
		System.out.println(sp.protectedStr());
		System.out.println(sp.publicStr());
	}

}
