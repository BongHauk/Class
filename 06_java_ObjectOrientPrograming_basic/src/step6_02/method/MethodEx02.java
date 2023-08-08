package step6_02.method;

import java.io.FileWriter;
import java.io.IOException;

/*
 * 
 *  # 메서드의 4가지 형태
 * 
 *       - 입력값(파라메타 , 매개변수 , 인수 , 인자 , 아규먼트)과 결과값(return)의 유무에 따라 4가지 형태로 구분할 수 있다.
 * 
 *       입력값이 있고 , 결과값이 있다. ( 11 )
 *       입력값이 있고 , 결과값이 없다. ( 10 )
 *       입력값이 없고 , 결과값이 있다. ( 01 )
 *       입력값이 없고 , 결과값이 없다. ( 00 )
 * 
 * */

class MethodType {
	
	// 입력값도 없고 결과값도 없는 경우
	void type00() {
		System.out.println("=================");
		System.out.println("1. 로그인");
		System.out.println("2. 로그아웃");
		System.out.println("3. 개인정보조회");
		System.out.println("4. 개인정보수정");
		System.out.println("5. 종료");
		System.out.println("=================\n");
		
		//return;  //반환하는 데이터가 없을 경우 return 생략할 수 있다.
	}
	
	// 입력값도 있고 결과값도 있는 경우
	void type10(String fileName) { // 파라메타 , 매개변수 , 아규먼트 
		try {
			FileWriter fw = new FileWriter(fileName);
			fw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	// 입력값은 없고 결과값은 있는 경우
	
	// 입력값은 있고 결과값은 없는 경우
	
	
}


public class MethodEx02 {

   public static void main(String[] args) {
	   
	   MethodType object = new MethodType();
	   
	   	// 입력값도 없고 결과값도 없는 경우
		object.type00();
		System.out.println();
		
		// 입력값도 있고 결과값도 있는 경우
		object.type10("팀 버너스 리.txt");
		object.type10("팀 버너스 리.hwp");
		object.type10("팀 버너스 리.pptx");
		
		// 입력값은 없고 결과값은 있는 경우
		
		// 입력값은 있고 결과값은 없는 경우
   }

}

