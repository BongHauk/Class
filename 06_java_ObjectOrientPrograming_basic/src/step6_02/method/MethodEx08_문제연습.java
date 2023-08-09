package step6_02.method;
//2023.08.09

class Ex08 {
	
	void printSum(int[] arr) {
		int sum = 0;
		for (int i = 0; i < arr.length; i++) {
			sum += arr[i];
		}
		System.out.println("요소 전체의 합 : " + sum);
	}
	void printSumMultiple4(int[] arr) {
		int sum = 0;
		for (int i = 0; i < arr.length; i++) {
			if (arr[i]%4 == 0) {
				sum += arr[i];
			}
		}
		System.out.println("4의 배수의 합 : " + sum);
	}
	void printCountMultiple4(int[] arr) {
		int count = 0;
		for (int i = 0; i < arr.length; i++) {
			if (arr[i]%4 == 0) {
				count++;
			}
		}
		System.out.println("4의 배수의 개수 : " + count);
	}
}


public class MethodEx08_문제연습 {

	public static void main(String[] args) {
		
		int[] arr = { 87, 100, 11, 72, 92 };
		Ex08 e = new Ex08();

		// 문제 1) arr요소의 전체 합을 출력하는 메서드
		e.printSum(arr);
		// 정답 1) 362
		
		// 문제 2) 4의 배수의 합을 출력하는 메서드
		e.printSumMultiple4(arr);
		// 정답 2) 264

		// 문제 3) 4의 배수의 개수를 출력하는 메서드
		e.printCountMultiple4(arr);
		// 정답 3) 3
		
		

	}

}
