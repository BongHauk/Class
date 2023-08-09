package step6_02.method;
//2023.08.09
//바꾸는 방법이 뭘까 검색

class Ex06{
	
	void test1(int x, int y) {
		int sum = 0;
		for (int i = x; i <= y; i++) {
			sum += i;
		}
		System.out.println("x부터 y까지의 합 :" + sum);
	}
	
	void test2(int[] arr) {
		int Max = 0;
		for (int i = 0; i < arr.length; i++) {
			if(Max < arr[i]) {
				Max = arr[i];
			}
		}
		System.out.println("배열의 최대값 : " + Max);
	}
	
	void test3(int[] arr, int idx1, int idx2) {
		int a = arr[idx1];
		arr[idx1] = arr[idx2];
		arr[idx2] = a;
		
		for (int i = 0; i < arr.length; i++) {
			System.out.print(arr[i] + " ");
		}
	}
	
}


public class MethodEx06_문제연습 {

	public static void main(String[] args) {
		
		
			Ex06 e = new Ex06();
			
			// 문제 1) x부터 y까지의 합을 출력하는 메서드
			int x = 1;
			int y = 10;
			e.test1(x, y);
			
			// 문제 2) arr배열을 전달받아 최대값을 출력하는 메서드
			int[] arr = {87, 100, 35, 12, 46};
			e.test2(arr);
			
			// 문제 3) arr배열과 idx1 , idx2를 전달받아 idx1번째와 idx2번째를 교체한뒤 출력하는 메서드
			int idx1 = 1;
			int idx2 = 4;
			e.test3(arr, idx1, idx2);
		

	}

}
