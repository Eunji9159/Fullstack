package com.springbook.ioc.injection;

//P.92-94
import java.util.List;
//P.94-96
import java.util.Set;
//P.96-97
import java.util.Map;
//P.97-98
import java.util.Properties;

public class CollectionBean {
//	P.92-94 List
//	private List<String> addressList;
//
//	public List<String> getAddressList() {
//		return addressList;
//	}
//
//	public void setAddressList(List<String> addressList) {
//		this.addressList = addressList;
//	}
	
	
//	P.94-96 Set
//	private Set<String> addressList;
//	
//	public Set<String> getAddressList() {
//		return addressList;
//	}
//	
//	public void setAddressList(Set<String> addressList) {
//		this.addressList = addressList;
//	}
	
//	private Set<Integer> addressList;
//	
//	public Set<Integer> getAddressList() {
//		return addressList;
//	}
//	
//	public void setAddressList(Set<Integer> addressList) {
//		this.addressList = addressList;
//	}


//	P.96-97 Map
	private Map<String, String> addressList;

	public Map<String, String> getAddressList() {
		return addressList;
	}

	public void setAddressList(Map<String, String> addressList) {
		this.addressList = addressList;
	}

	
//	P.97-98 Properties
//	private Properties addressList;
//
//	public Properties getAddressList() {
//		return addressList;
//	}
//
//	public void setAddressList(Properties addressList) {
//		this.addressList = addressList;
//	}
	
}
