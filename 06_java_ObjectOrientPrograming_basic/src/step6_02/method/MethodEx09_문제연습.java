package step6_02.method;
import java.util.Arrays;
//2023.08.09
/*
double[] values = {1.0, 1.1, 1.2};
System.out.println(values.toString()); // 이렇게 하면 [D@46a49e6 같은 값이 나옵니다.
System.out.println(Arrays.toString(values)); // 이렇게 하면 [1.0, 1.1, 1.2] 이 출력됩니다.
*/
import java.util.Random;
import java.util.Scanner;


class Ex09 {

	Random ran = new Random();
	Scanner scan = new Scanner(System.in);
	
	//문제 1)
	void setRandomValuesinArray(int[] scores) {
		for(int i = 0; i < scores.length; i++) {
			int r = ran.nextInt(100)+1;
			scores[i] = r;
			System.out.print(scores[i] + " ");
		}
		System.out.println();
	}
	
	//문제 2)
	void printSumAndAverage(int[] scores) {
		int sum = 0;
		double avg = 0;
		for (int i = 0; i < scores.length; i++) {
			sum += scores[i];
		}
		avg = (double)sum/scores.length;
		System.out.println("전교생의 총점 : " + sum + "  "
				+ "전교생의 평균 : " + avg);
	}
	
	//문제 3)
	void printWinner(int[] scores) {
		int count = 0;
		for(int i = 0; i < scores.length; i++) {
			if(scores[i] >= 60) {
				count++;
			}
		}
		System.out.println("합격생의 수 : " + count);
	}
	
	//문제 4)
	void printScore1(int[] scores) {
		System.out.println("인덱스를 입력하세요 : ");
		int index = scan.nextInt();
		System.out.println(index + "번의 성적 : " + scores[index]);
	}
	
	//문제 5)
	void printScore2(int[] scores) {
		System.out.println("성적을 입력하세요 : ");
		int score = scan.nextInt();
		for(int i = 0; i < scores.length; i++) {
			if(scores[i] == score) {
				System.out.println(score + "의 성적은 " + i + "번째에 위치");
			}
		}
	}
	
	//문제 6)
	void printScore3(int[] hakbuns, int[] scores) {
		System.out.println("학생 리스트 : " + Arrays.toString(hakbuns));
		
		System.out.println("학번을 입력하세요 : ");
		int hakbun = scan.nextInt();
		boolean is = false;
		for (int i = 0; i < hakbuns.length; i++) {
			if(hakbun == hakbuns[i]) {
				System.out.println(hakbun + "의 성적 : " + scores
						[i]);
				is = true;
			}
		}
		if(is == false) {
			System.out.println("없는 학번 입니다.");
		}
		System.out.println();
	}
	
	//문제 7)
	void printNumberOne(int[] hakbuns, int[] scores) {
		int Max  = 0;
		for (int i = 0; i < scores.length; i++) {
			if (Max < scores[i]) {
				Max = scores[i];
				System.out.println("1등 학생은 " + hakbuns[i] + "번 , " + Max + "점 입니다.");
			}
		}
	}
	
}



public class MethodEx09_문제연습 {

	public static void main(String[] args) {
		
		int[] hakbuns = { 1001, 1002, 1003, 1004, 1005 };
		int[] scores  = new int[5];
		Ex09 e = new Ex09();
		
		// 문제1) scores배열에 1~100점 사이의 랜덤 정수를 5개 저장하는 메서드
		e.setRandomValuesinArray(scores);
		// 예 1) 87, 11, 92, 14, 47

		// 문제2) 전교생의 총점과 평균 출력하는 메서드
		e.printSumAndAverage(scores);
		// 예 2) 총점(251) 평균(50.2)

		// 문제3) 성적이 60점 이상이면 합격이며 합격생 수를 출력하는 메서드
		e.printWinner(scores);
		// 예 3) 2명

		// 문제4) 인덱스를 입력받아 성적 출력하는 메서드
		e.printScore1(scores);
		// 정답4) 인덱스 입력 : 1 성적 : 11점

		// 문제5) 성적을 입력받아 인덱스 출력하는 메서드
		e.printScore2(scores);
		// 정답5) 성적 입력 : 11 인덱스 : 1

		// 문제6) 학번을 입력받아 성적 출력하는 메서드 // 단, 없는학번 입력 시 예외처리
	    // 단, 없는학번 입력 시 예외처리
		e.printScore3(hakbuns, scores);
		// 정답6) 학번 입력 : 1003 성적 : 45점

		// 문제7) 1등학생의 학번과 성적 출력하는 메서드
		e.printNumberOne(hakbuns, scores);
		// 정답7) 1004번(98점)

	}

}
