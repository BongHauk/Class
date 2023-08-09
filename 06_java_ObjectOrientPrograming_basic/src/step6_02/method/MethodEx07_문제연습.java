package step6_02.method;
//2023.08.09
//'소수'에 대한 개념을 좀더 파고 들어야 어떻게 접근 할 지 알 수 있겠다.

class Ex07 {
	
	void printEvenOrOdd(int x) {
		if(x%2 == 0) {
			System.out.println(x + "는 짝수 입니다.");
		}else {
			System.out.println(x + "는 홀수 입니다.");
		}
	}
	void getAvgBetweenValues(int x, int y) {
		int sum = 0;
		double avg = 0;
		int count = 0;
		for (int i = x; i <= y; i++) {
			sum += i;
			count ++;
		}
		avg = (double)sum / count ;
		System.out.println("x부터 y까지 합의 평균 : " + avg);
	}

	void printPrimeNums(int primeNumber) {
		for (int i = 2; i <= primeNumber; i++) {
			int count  = 0;
			for (int n = 1; n <= i; n++) {
				if (i % n == 0) {
					count++;
				}
			}
			if (count == 2) {
				System.out.print(i + " ");
			}
		}
		System.out.println();
	}
}


public class MethodEx07_문제연습 {

	public static void main(String[] args) {
		
		
			Ex07 e = new Ex07();
			
			// 문제 1) num이 홀수인지 짝수인지 출력하는 메서드
			int num = 19;
			e.printEvenOrOdd(num);
	
			// 문제 2) x부터 y까지 합의 평균을 출력하는 메서드
			int x = 1;
			int y = 10;
			e.getAvgBetweenValues(x, y);
	
			// 문제3) 2부터 primeNumber까지의 소수를 전부 출력하는 메서드 
			int primeNumber = 20;
			e.printPrimeNums(primeNumber);
		



	}

}
