package step6_01.classObject;

import java.util.Scanner;

/*
 * # 학생성적 관리 프로그램[3단계] : 클래스 + 변수
 * 1. 학번을 입력하면, 해당 학생의 성적이 출력된다.
 * 2. 단, 없는 학번 입력에 관한 예외상황을 반드시 처리해야 한다.
 * 3. 1등과 꼴등 학생의 정보를 확인할 수 있다.
 */

/*
class Ex05{
   
   String name = "";
   
   int[] arHakbun = {1001, 1002, 1003, 1004, 1005};
   int[] arScore  = {  92,   38,   87,  100,   11};

}
*/


public class ClassEx05_문제 {

   public static void main(String[] args) {

      
      Scanner scan = new Scanner(System.in);

      //Ex05 mega = new Ex05();
      //mega.name = "메가IT 고등학교";
      
      while (true) {
         
         // 메뉴 출력
         //System.out.println("=== " + mega.name + "===");
         System.out.println("1.전교생 성적확인");
         System.out.println("2.1등학생 성적확인");
         System.out.println("3.꼴등학생 성적확인");
         System.out.println("4.성적확인하기");
         System.out.println("5.종료하기");
         
         // 메뉴 선택
         System.out.print("메뉴 선택 : ");
         int choice = scan.nextInt();
         Ex05 e = new Ex05();
         e.name = "메가 IT 고등학교";
         
         
         if      (choice == 1) {
        	 int total = 0;
        	 for (int i = 0; i < e.arScore.length; i++) {
        		 total += e.arScore[i];
        	 }
        	 
        	 double avg = (double)total / e.arHakbun.length;
        	 System.out.println("전교생 수 = " + e.arScore.length + "명");
             System.out.println("총점 = " + total + "점");
             System.out.printf("평균 = %.1f점\n", avg);
         }
         else if (choice == 2) {
        	 int MaxScore = 0;
        	 int Index = 0;
        	 for(int i = 0; i < e.arScore.length; i++) {
        		 if(MaxScore < e.arScore[i]) {
        			 MaxScore = e.arScore[i];
        			 Index = i;
        		 }
        		 
        	 }
        	 System.out.println("=== 1등 ===");
             System.out.println("학번 : " + e.arHakbun[Index]);
             System.out.println("성적 : " + MaxScore);
         }
         else if (choice == 3) {
        	 int minIdx = 0;
        	 int minScore = e.arScore[0];
        	 for (int i = 0; i < e.arScore.length; i++) {
        		 if(minScore > e.arScore[i]) {
        			 minScore = e.arScore[i];
        			 minIdx = i;
        		 }
        	 }
        	 System.out.println("=== 꼴등 ===");
             System.out.println("학번 : " + e.arHakbun[minIdx]);
             System.out.println("성적 : " + minScore);
         }
         else if (choice == 4) {
        	 System.out.println("학번을 입력하세요 : ");
        	 int hakbun = scan.nextInt();
        	 
        	 int check = -1;
        	 for (int i = 0; i < e.arHakbun.length; i++) {
        		 if(hakbun == e.arHakbun[i]) {
        			 check = i;
        		 }
        	 }
        	 if(check == -1) {
        		 System.out.println("학번을 잘못 입력하셨습니다.");
        	 }else {
                 System.out.println(hakbun + "학번 학생의 성적은 " + e.arScore[check] + "점 입니다.");

        	 }
         }
         else if (choice == 5) {
            System.out.println("프로그램 종료");
            break;
         }
      }
      
      scan.close();
   }

}