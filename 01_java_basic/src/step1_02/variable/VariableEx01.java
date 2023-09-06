package step1_02.variable;

/*
 * 
 *  # 변수 ( variable )
 *  
 *  - 단 하나의 값을 저장할 수 있는 메모리 공간
 *  
 *  	1) 변수의 선언 그리고 초기화
 *  	
 *  	변수의 선언 	: int nData;	// 메모리 공간 할당
 *  	변수의 초기화	: nData = 0;    // 값 저장
 *  
 *  	
 *  	2) 변수의 선언과 동시에 초기화
 *  	
 *  	int nData = 0;
 *  	
 *  
 *  	3) 변수의 특징
 *  	
 *  	3-1) 변수는 변수 하나당 값을 한개만 저장할 수 있다. [ 고유성 ]
 *  	3-2) 새로운 값이 변수에 저장되면 이전값은 사라진다.
 *  
 * 
 * */


public class VariableEx01 {

	public static void main(String[] args) {

		// 1. 정수 : Integer(int)		
		int memberAge;		// 변수의 선언
		memberAge = 20;		// 데이터 저장(대입)
		
		System.out.println(memberAge);
		
		// 2. 실수 : double
		double memberWeight = 80.14;
		
		System.out.println(memberWeight);
		
		
		// 3. 문자 1개 : character(char)
		char memberGenderEng = 'm';
		char memberGenderKor = '남';
		
		System.out.println(memberGenderEng);
		System.out.println(memberGenderKor);
		
		
		// 4. 문자열 : String
		String subjectName = "웹 개발";
		System.out.println(subjectName);
		
		
		// 5. 참과 거짓 : boolean
		boolean isMember = true;
		System.out.println(isMember);
		
		
		// 변수의 특징 (고유성)
		int goodsPrice = 20000;
		//int goodsPrice = 22000; // 똑같은 이름의 변수를 생성할 수 없다.
		
		goodsPrice = 22000; // 자료형을 생략했으므로 기존의 변수의 값을 수정한다.
		goodsPrice = 24200;
		
		System.out.println(goodsPrice); // 가장 최근의 데이터만 저장되어 있다.
		
		
		// 변수의 초깃값(reset x , init o)
		int deliveryPrice;
		//System.out.println(deliveryPrice); // 변수를 초기화하지 않으면 가비지데이터가 변수에 저장되어있다.
		
		// int형 변수는 0으로 초깃값을 지정하여 사용한다.
		int tax = 0;
		
	}

}
