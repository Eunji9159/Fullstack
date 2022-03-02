package forth;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Scanner;

public class Collect03 {

	public static void main(String[] args) {
		Map<String,String> map = new HashMap<String,String>();
		map.put("castello", "1234"); // Key(스트링자료형)
		map.put("asdf", "1111");
		map.put("lang", "1234");

		
		Iterator<String> it = map.keySet().iterator();
		while(it.hasNext()) {
			String key = it.next();
			String val = (String) map.get(key);
			System.out.println("key: "+key+ "  val: "+val);
		}
		
		
//		Scanner s = new Scanner(System.in); //Scanner:사용자 입력용으로 만드는 클래스
//        // 화면으로부터 라인단위로 입력
//
//		while (true) {//무한루프 - 빠져나가는 break있어야함.
//			System.out.println("id와 password를 입력해주세요.");
//			System.out.print("id : ");
//			String id = s.nextLine().trim();//nextLine:한 줄 다 받아옴
//
//			System.out.print("password : ");
//			String password = s.nextLine().trim();//중간 공백은 제거 안되도 끝에 있는 것만 제거
//			System.out.println();
//
//			if (!map.containsKey(id)) {
//				System.out.println("입력하신 id는 존재하지 않습니다. 다시 입력해주세요.\n");
//			} else {
//				if (!(map.get(id)).equals(password)) {
//					System.out.println("비밀번호가 일치하지 않습니다. 다시 입력해주세요.\n");
//				} else {
//					System.out.println("id와 비밀번호가 일치합니다.");
//					break;
//				}
//			}
//		}
	}

}
