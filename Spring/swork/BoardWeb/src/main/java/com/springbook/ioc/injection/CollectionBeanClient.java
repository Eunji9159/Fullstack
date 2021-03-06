package com.springbook.ioc.injection;

import java.util.Enumeration;
import java.util.Iterator;
//P.92-94
import java.util.List;

//P.94-96
import java.util.Set;

//P.96-97
import java.util.Map;

//P.97-98
import java.util.Properties;



import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class CollectionBeanClient {
	public static void main(String[] args) {
		AbstractApplicationContext factory = new GenericXmlApplicationContext("collectionContext.xml");
		CollectionBean bean = (CollectionBean) factory.getBean("collectionBean");
		
//		P.92-94		
//		List<String> addressList = bean.getAddressList();
//		for(String address : addressList) {
//			System.out.println("address: "+address); //toString()없어도 됨.
//		}
		
		
//		P.94-96	
//		Set<String> addressList = bean.getAddressList();
//		for (String address : addressList) {
//			System.out.println(address.toString());
//		}
//		Set<Integer> addressList = bean.getAddressList();
//		for (int address : addressList) {
//			System.out.println(address);
//		}


//		P.96-97	        
		Map<String, String> addressList = bean.getAddressList();	
		for(Map.Entry<String, String> entry: addressList.entrySet() ) {
		   System.out.println("KEY : "+entry.getKey()+", VALUE : "+entry.getValue());           
		}
		
//		Iterator<String> k = addressList.keySet().iterator(); //String로 반환 가능
//		while(k.hasNext()) {
//			String key = k.next();
//			System.out.println("KEY : "+key+", VALUE : "+addressList.get(key));           
//		}
		
   
//		P.97-98 Properties도 Map자료형과 동일하게 처리할 수 있다.
//		Properties addressList = bean.getAddressList();
//		for(Map.Entry entry: addressList.entrySet() ) {
//		   System.out.println("KEY : "+entry.getKey()+", VALUE : "+entry.getValue());           
//		}
		
//		Iterator<Object> k = addressList.keySet().iterator(); //Object로 반환됨
//		while(k.hasNext()) {
//			String key = (String) k.next();
//			System.out.println("KEY : "+key+", VALUE : "+addressList.get(key));           
//		}
	}

}
