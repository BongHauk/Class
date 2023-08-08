package step6_01.classObject;

import java.util.Random;
import java.util.Scanner;

/*
class Ex04 {

   int[] hakbuns = {1001, 1002, 1003, 1004, 1005};
   int[] scores  = new int[5];
   
}
*/


public class ClassEx04_문제 {

   public static void main(String[] args) {
      
	   Ex04 ex04 = new Ex04();
	   Scanner scan = new Scanner(System.in);
	   Random ran = new Random();
      // 문제1) scores배열에 1~100점 사이의 정수를 5개 저장
	   for (int i = 0; i < ex04.scores.length; i++) {
		   ex04.scores[i] += ran.nextInt(100);
		   System.out.print(ex04.scores[i] + " ");
	   }
	   System.out.println();
      // 예   1) 87, 11, 92, 14, 47
      
      // 문제2) 전교생의 총점과 평균 출력
	   int tot = 0;
	   double avg = 0.0;
	   for (int i = 0; i < ex04.scores.length; i++) {
		   tot += ex04.scores[i];
		   avg = tot / (double)ex04.scores.length;
	   }
	   System.out.println("tot : " + tot);
	   System.out.println("avg : " + avg);
      // 예   2) 총점(251) 평균(50.2)
      
      // 문제3) 성적이 60점 이상이면 합격. 합격생 수 출력
	   int c = 0;
	   for (int i = 0; i < ex04.scores.length; i++) {
		   if (ex04.scores[i] >= 60) {
			   c += 1;
		   }
	   }
	   System.out.println("60점 이상인 학생의 수 : " + c);
      // 예   3) 2명
      
      // 문제4) 인덱스를 입력받아 성적 출력
	   System.out.println("인텍스 입력 : ");
	   int index = scan.nextInt();
	   for (int i = 0; i < ex04.scores.length; i++) {
		   if(i == index) {
			   System.out.println("성적 : " + ex04.scores[i]);
		   }
	   }
      // 정답4) 인덱스 입력 : 1   성적 : 11점
      
      // 문제5) 성적을 입력받아 인덱스 출력
	   System.out.println("성적 입력 : ");
	   int score = scan.nextInt();
	   for (int i = 0; i < ex04.scores.length; i++) {
		   if(ex04.scores[i] == score) {
			   System.out.println("인덱스 : " + i);
		   }
	   }
      // 정답5) 성적 입력 : 11      인덱스 : 1
      
      // 문제6) 학번을 입력받아 성적 출력
	   System.out.println("학번 입력 : ");
	   int hacbun = scan.nextInt();
	   for (int i = 0; i < ex04.hakbuns.length; i++) {
		   if(ex04.hakbuns[i] == hacbun) {
			   System.out.println("성적 : " + ex04.scores[i]);
		   }
	   }
      // 정답6) 학번 입력 : 1003   성적 : 45점
      
      // 문제7) 학번을 입력받아 성적 출력
      //       단, 없는학번 입력 시 예외처리
	   System.out.println("학번 입력 : ");
	   hacbun = scan.nextInt();
	   int check = -1;
	   for (int i = 0; i < ex04.hakbuns.length; i++) {
		   if(ex04.hakbuns[i] == hacbun) {
			   check = i;
		   }
	   }
	   if(check == -1) {
		   System.out.println("해당학번은 존재하지 않습니다.");
	   }else {
		   System.out.println("성적 : " + ex04.scores[check]);
	   }
      // 예   7)
      // 학번 입력 : 1002      성적 : 11점
      // 학번 입력 : 1000      해당학번은 존재하지 않습니다.
      
      // 문제8) 1등학생의 학번과 성적 출력
	   int MaxScore = 0;
	   int MaxIndex = 0;
	   for (int i = 0; i < ex04.scores.length; i++) {
		   if(MaxScore < ex04.scores[i]) {
			   MaxScore = ex04.scores[i];
			   MaxIndex = i;
		   }
	   }
	   System.out.println("1등은 " + ex04.hakbuns[MaxIndex] + "번 " + MaxScore + " 점");
      // 정답8) 1004번(98점)

   }

}