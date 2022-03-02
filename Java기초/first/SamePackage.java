package first;

public class SamePackage {

	protected String sameVar = "같은 패키지는 허용"; //접근제어자 생략됨/ 같은 패키지내에서만 가능
    
    private String privateStr() { // 같은 클래스 안에서만. (SamePackage에서만 가능)
    	return "기존private";
    }
    
    String defaultStr() { //first패키지 안에서만
    	return "기존default";
    }
    
    protected String protectedStr(){
    	return "기존protected";
    }

    public String publicStr() { //first/firstsub 상관없이 가능
    	System.out.println("기존private출력");
    	System.out.println("해당 클래스의 sameVar변수값: "+sameVar);
    	return "기존public";
    }
}