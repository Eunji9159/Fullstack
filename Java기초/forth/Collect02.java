package forth;

import java.util.*;

public class Collect02 {

	public static void main(String[] args) {
		ArrayList<Student> list = new ArrayList<Student>(); // Student라는 클래스 정의.(밑에 있음)
		list.add(new Student("자바왕", 1, 1));
		list.add(new Student("자바짱", 1, 2));
		list.add(new Student("홍길동", 2, 1));
		list.add(new Student("전우치", 2, 2));

		Iterator<Student> it = list.iterator();

		while (it.hasNext()) {//다음 값이 가지고 있는지 판단하는 메서드, boolean자료형으로 반환
			Student s = it.next(); // 다음 값을 가져온다. 커서가 옮겨진다.
			System.out.println(s.name + " " + s.ban + "반 " + s.no + "번");
		}

	}

}


class Student {
	String name = "";
	int ban;
	int no;

	Student(String name, int ban, int no) {
		this.name = name;
		this.ban = ban;
		this.no = no;
	}
}