package polymolphism;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

//@Component
//@Component("lgTV")
 
public class LgTV implements TV{
	//byType
	@Autowired @Qualifier("sony")
	@Resource(name="sony")
	private Speaker speaker;
	
		public LgTV() {
			System.out.println("===> LgTV 객체 생성");
		}
	
	
	public void powerOn() {
		System.out.println("Lg TV---전원 켠다.");
	}
	public void powerOff() {
		System.out.println("Lg TV---전원 끈다.");
	}
	public void volumeUp() {
		speaker.volumeUp();
	}
	public void volumeDown() {
		speaker.volumeDown();
	}
	
//	public void turnOn() {
//		System.out.println("Lg TV---전원 켠다.");
//	}
//	public void turnOff() {
//		System.out.println("Lg TV---전원 끈다.");
//	}
//	public void soundUp() {
//		System.out.println("Lg TV---소리 올린다.");
//	}
//	public void soundDown() {
//		System.out.println("Lg TV---소리 내린다.");
//	}

}
