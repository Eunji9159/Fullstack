package forth;

import java.util.ArrayList;
import java.util.List;

public class Collect01 {

	public static void main(String[] args) {
		List<String> list = new ArrayList<String>();
		list.add("사과");
		list.add("바나나");
		list.add("귤");
		list.add("오렌지");
		list.add("바나나"); // list는 중복이 가능하다.
		
//		list.set(2, "포도"); // 요소 바꾸기('귤'->'포도'값 바꾸기)
		list.remove(2); // 요소 제거

		for (String element : list)
			System.out.print(element + "\t");
		System.out.println();
		
		
		for(int i=0; i< list.size(); i++) { //배열의 길이는 'length' 문자열의 길이는 'length'메서드. list는 'size'
			System.out.print(list.get(i) + "\t");
		}
	}

}
