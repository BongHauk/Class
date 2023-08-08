package step6_01.classObject;

//# 학생성적관리 프로그램[1단계] : 클래스 + 변수

//class Ex03{
//   int[] arr = {87, 100, 11, 72, 92};
//}



public class ClassEx03_문제 {

   public static void main(String[] args) {
      
      // 문제 1) 전체 합 출력
	   Ex03 ex03 = new Ex03();
	   int a = 0;
	   for (int i = 0; i < ex03.arr.length; i++) {
		   a += ex03.arr[i];
	   }
	   System.out.println("전체의 합 : " + a);
      // 정답 1) 362
      
      // 문제 2) 4의 배수의 합 출력
	   int b = 0;
	   for (int i = 0; i < ex03.arr.length; i++) {
		   if (ex03.arr[i] % 4 == 0) {
			   b += ex03.arr[i];
		   }
	   }
	   System.out.println("4의 배수의 합 : " + b);
      // 정답 2) 264
      
      // 문제 3) 4의 배수의 개수 출력
	   int c = 0;
	   for (int i = 0; i < ex03.arr.length; i++) {
		   if (ex03.arr[i] % 4 == 0) {
			   c += 1;
		   }
	   }
	   System.out.println("4의 배수의 개수 : " + c);
      // 정답 3) 3
      
      // 문제 4) 짝수의 개수 출력
	   int d = 0;
	   for (int i = 0; i < ex03.arr.length; i++) {
		   if (ex03.arr[i] % 2 == 0) {
			   d += 1;
		   }
	   }
	   System.out.println("짝수의 개수 : " + d);
      // 정답 4) 3



   }

}