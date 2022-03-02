package fifth;

class Test{
	String s;
}

class Ex42 {
	public static void main(String args[]) {
		Test t=new Test();
		System.out.println("t값: "+t.s);
		try {//예외가 발생할 가능성이 있는 문장들을 넣는다.
//			String c = null;
//			System.out.println(" 문자열 값은 :  " + c.toString());
		} catch (NullPointerException e) {// NullPointerException e이 발생했을 경우, 이를 처리하기 위한 문장을 적는다.
			System.out.println("예외가 발생하여 Exception 객체가 잡음");
			System.out.println(e);
		}
		System.out.println("정상 종료");
	}
}