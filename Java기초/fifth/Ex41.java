package fifth;

class Ex41 {//예외처리 : 외부에서 데이터를 끌어오거나 파일을 가져올 경우 꼭 예외처리(try catch문) 해줘야함.
	public static void main(String args[]) {
		System.out.println(1);
		System.out.println(2);
//		try {//
			System.out.println(3);
			System.out.println(0 / 0); // 0으로 나눌 수 없으므로 에러.
			System.out.println(4); // 실행되지 않는다.
//		} catch (ArithmeticException ae) {
//			System.out.println(ae);
			System.out.println(5);
//		}
	}
}