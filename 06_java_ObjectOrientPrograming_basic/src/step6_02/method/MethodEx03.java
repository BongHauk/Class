package step6_02.method;

/*
 * 
 * # return
 *   
 *  1) 값을 반환한다.
 *  2) 메서드를 종료한다.
 *  3) 메서드에서의 return 값은 1개이다. 
 *  
 * */

class ReturnEx {
	
	void setScore1(int score1) {
		score1 = 100;
		
	}
	
	int setScore2(int score2) {
		score2 = 100;
		return score2;
	}
	
	int testReturn() {
		
		System.out.println("리턴 전 명령어 1");
		System.out.println("리턴 전 명령어 2");
		System.out.println("리턴 전 명령어 3");
		
		// error : 복수의 데이터를 반환할 수 없다.
		//return 1,2,3,4,5;
		
		
		return 0;
		
		// error return이 실행되는 순간 메서드가 종료된다.
		//System.out.println("리턴 후 명령어 1");
		//System.out.println("리턴 후 명령어 2");
		//System.out.println("리턴 후 명령어 3");
	}
	
}


public class MethodEx03 {

   public static void main(String[] args) {
      
	   ReturnEx object = new ReturnEx();
	   
	   int score1 = 87;
	   System.out.println("메서드 호출 전 : " + score1);
	   
	   object.setScore1(score1);
	   System.out.println("메서드 호출 후 : " + score1);
	   
	   System.out.println("======================");
	   
	   int score2 = 87;
	   System.out.println("메서드 호출 전 : " + score2);
	   
	   object.setScore2(score2);
	   System.out.println("메서드 호출 후 : " + score2);

	   System.out.println("======================");
	   
	   score2 = object.setScore2(score2);
	   
	   System.out.println("메서드 호출 후 : " + score2);
	   System.out.println(object.setScore2(score2));

   }

}