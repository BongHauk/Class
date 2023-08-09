package step6_02.method;

import java.util.Scanner;

//2023.08.09

class Ex05_연습{

	void test1() {
		int sum = 0;
		for (int i = 0; i<=5; i++) {
			sum += i;
		}
		System.out.println("1~5 까지의 합 : " + sum);
	}
	
	void test2() {
		Scanner scan = new Scanner(System.in);
		int[] arr = new int[3];
		
		for(int i = 0; i < arr.length; i++) {
			System.out.println((i+1) + "정수입력 : ");
			arr[i] = scan.nextInt();
		}
		int Max = 0;
		for (int i = 0; i < arr.length; i++) {
			if(Max < arr[i]) {
				Max = arr[i];
			}
		}
		System.out.println("최대값 : " + Max);
		scan.close();
	}
	
}


public class MethodEx05_문제연습 {

	public static void main(String[] args) {

		
			Ex05_연습 e = new Ex05_연습();
						
			// 문제 1) 1부터 5까지의 합을 출력하는 메서드
			e.test1();
			
			// 문제 2) 정수 3개를 배열에 입력받아 최대값을 출력하는 메서드
			e.test2();
		


	}

}
