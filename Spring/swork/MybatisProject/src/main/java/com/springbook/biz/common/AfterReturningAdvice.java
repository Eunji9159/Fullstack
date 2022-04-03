package com.springbook.biz.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

import com.springbook.biz.user.UserVO;

@Service
@Aspect
public class AfterReturningAdvice {
	
// p214
	@AfterReturning(pointcut="PointcutCommon.getPointcut()", returning="returnObj")
//	@Pointcut("execution(* com.springbook.biz..*biz..*Impl.get*(..))")
//	public void getPointcut() {}
	
//	@AfterReturning(pointcut="getPointcut()", returning="returnObj")
//	public void afterLog() {
//		System.out.println("[사후 처리] 비즈니스 로직 수행 후 동작");
//	}
	
	public void afterLog(JoinPoint jp, Object returnObj) {
		String method = jp.getSignature().getName();
		
		if(returnObj instanceof UserVO) {
			UserVO user = (UserVO) returnObj;
			if(user.getRole().contentEquals("Admin")) {
				System.out.println(user.getName() + "로그인(Admin)");
			}
		}
		
		System.out.println("[사후 처리] " + method + "() 메소드 리턴값 : " + returnObj.toString());
	}

}
