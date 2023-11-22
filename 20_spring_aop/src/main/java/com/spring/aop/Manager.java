package com.spring.aop;

import org.springframework.stereotype.Component;

// 테스트 클래스1
@Component
public class Manager {

	public void work() {
		System.out.println("메니저의 일을 한다.");
	}
	
	public void getWorkingTime() {
		try {
			Thread.sleep(700);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void getInfo(String title , int salary) {
		
	}
	
}
