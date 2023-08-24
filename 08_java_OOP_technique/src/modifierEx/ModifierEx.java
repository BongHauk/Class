package modifierEx;

// class 앞에는 public 이랑 default 밖에 안됨.
public class ModifierEx {

	public int publicV;
	protected int protectedV;
	int defaultV;
	private int privateV;
	
	public void publicM() {}
	protected void protectedM() {}
	void defaultM() {}
	private void privateM() {}
	
}

//테스트

class Test1 extends ModifierEx{
	void test() {
		System.out.println(publicV);		// (접근가능) 같은 프로젝트
		System.out.println(protectedV);		// (접근가능) 상속 관계
		System.out.println(defaultV);		// (접근가능) 같은 패키지
		//System.out.println(privateV);		// (접근불가) 다른 클래스
		
		publicM();		// (접근가능) 같은 프로젝트
		protectedM();	// (접근가능) 상속 관계
		defaultM();		// (접근가능) 같은 패키지
		//privateM();	// (접근불가) 다른 클래스
	}
}