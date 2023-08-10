package step6_02.method;
// this 가 생략 되어 있다?!
// # 다양한 변수의 종류
class variableEx {
	
	int a; 					// 인스턴스, 객체 변수 ( 객체에서 사용하는 변수 )
	static int b; 			// 클래스 변수 ( 클래스에서 사용하는 변수 )
	
	void testVar(int c) { 	// 매개변수 ( 메서드로 전달되는 데이터를 받을 때 사용하는 변수 )
		int d;				// 지역변수 ( 메서드 내부에서 사용하는 변수 )
	}
	
}

// this : 객체(인스턴스,오브젝트) 자신
class Zealot {
	
	int shield = 60;
	int hp = 100;
	
	void showStatus() {
		System.out.println("this : " + this);
		// this는 생략이 가능하고 일반적으로 생략한다.
		System.out.println("shield : " + shield);
		System.out.println("hp : " + hp);
		System.out.println();
		

		//System.out.println("shield : " + this.shield);
		//System.out.println("hp : " + this.hp);
	}
}

public class MethodEx04 {

	public static void main(String[] args) {
		
		Zealot z1 = new Zealot();
		System.out.println("z1 : " + z1);
		z1.shield = 0;
		z1.hp = 0;
		z1.showStatus();
		
		Zealot z2 = new Zealot();
		System.out.println("z2 : " + z2);
		z2.shield = 30;
		z2.hp = 30;
		z2.showStatus();
		
		Zealot z3 = new Zealot();
		System.out.println("z3 : " + z3);
		z3.showStatus();
		
	}

}
