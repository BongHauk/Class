package step8_01.technique;

import modifierEx.ModifierEx;

//public class A{}		// (접근가능) : 하나의 class파일에는 파일이름과 같은 하나의 public클래스만 존재할 수 있다.
class R{
	
}

//protected class B{}	// (불가능) : class는 public, default 접근제어만 사용가능하다.
//private class D{}		// (불가능) : class는 public, default 접근제어만 사용가능하다.


//test
class Test2 extends ModifierEx{
	void test() {
		System.out.println(publicV);		// (접근가능) 같은 프로젝트
		System.out.println(protectedV);		// (접근가능) 상속 관계
		//System.out.println(defaultV);		// (접근불가) 다른 패키지
		//System.out.println(privateV);		// (접근불가) 다른 클래스
		
		publicM();		// (접근가능) 같은 프로젝트
		protectedM();	// (접근가능) 상속 관계
		//defaultM();	// (접근불가) 다른 패키지
		//privateM();	// (접근불가) 다른 클래스
	}
}

public class TechniqueEx02_02 {

	public static void main(String[] args) {
		
	}

}
