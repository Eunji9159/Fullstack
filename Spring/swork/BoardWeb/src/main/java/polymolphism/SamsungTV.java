package polymolphism;

public class SamsungTV implements TV{

	private Speaker speaker;
	private int price;
	
	public SamsungTV() { //디폴트 생성자.
		System.out.println("===>SamsungTV(1) 객체 생성");
	}	
	
	public void setSpeaker(Speaker speaker) {
		System.out.println("===> setSpeaker() 호출");
		this.speaker = speaker;
	}
	
	public void setPrice(int price) {
		System.out.println("===> etPrice() 호출");
		this.price = price;
	}
	
	public void powerOn() {
		System.out.println("SamsungTV---전원 켠다. (가격 : " + price+ ")");
	}
	
	public void powerOff() {
		System.out.println("SamsungTV---전원 끈다.");
	}
	
	public void volumeUp() {
		speaker.volumeUp();
	}
	
	public void volumeDown() {
		speaker.volumeDown();
	}
	
	
	
//	public void powerOn() {
//		System.out.println("SamsungTV---전원 켠다.");
//	}
//	
//	public void powerOff() {
//		System.out.println("SamsungTV---전원 끈다.");
//	}
//	
//	public void VolumeUp() {
//		System.out.println("SamsungTV---소리 올린다.");
//	}
//	
//	public void VolumDown() {
//		System.out.println("SamsungTV---소리 내린다.");
//	}

}
