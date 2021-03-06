package polymolphism;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TVUser {

	public static void main(String[] args) {
		
		// 1.Spring 컨테이너를 구동한다. 즉시 로딩방식. xml파일을 읽어오는 기능을 한다. xml파일 안에 Bean으로 설정되어 있는 것을 객체로 만들어서 준비시킨다.
		AbstractApplicationContext factory = new GenericXmlApplicationContext("applicationContext.xml");
//		SamsungTv tv = new SamsungTv();
		
		// 2. Spring 컨테이너로부터 필요한 객체를 요청(Lookup)한다.
		TV tv = (TV) factory.getBean("tv"); // <bean id="tv" class="polymolphism.SamsungTV"></bean>
		tv.powerOn();
		tv.volumeUp();
		tv.volumeDown();
		tv.powerOff();
		
		// 3. Spring 컨테이너를 종료한다.
		factory.close();
		
		
		
//		BeanFactory factory = new BeanFactory();
//		TV tv = (TV)factory.getBean(args[0]);
//		tv.powerOn();
//		tv.volumeUp();
//		tv.volumeDown();
//		tv.powerOff();
		
		
//		LgTV tv = new LgTV();
//		tv.turnOn();
//		tv.soundUp();
//		tv.soundDown();
//		tv.turnOff();

	}

}
