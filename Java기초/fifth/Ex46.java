package fifth;

class Ex46 {
	public static void main(String[] args) {
		try  {
				method1();		
		} catch (Exception e)	{
				System.out.println("main 에서 예외 처리");
				e.printStackTrace();
		}
	}

	static void method1() throws Exception { //throws: 메서드 뒤에 있음. 예외처리를 던져라(책임회피형)
		throw new Exception(); // throw: 예외를 고의로 발생시킴
	}
}

