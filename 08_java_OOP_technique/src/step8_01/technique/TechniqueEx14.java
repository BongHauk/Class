package step8_01.technique;

/*
 * 
 *  # 쓰레드(Thread)
 *  
 *  - 운영체제에 의해서 관리되는 하나의 '작업' 혹은 '태스크'를 의미한다. 
 *     Ex) 음성인식 작업 , 모션인식 작업 , 웹브라우저 ,  main()함수
 *    
 *  - main() 의외의 다른 쓰레드를 만들려면 Thread클래스를 상속받거나 Runnable 인터페이스를 구현한다.
 * 
 *  - 자바에서는 다중 상속을 허용하지 않기 때문에 Thread 클래스를 확장하는 클래스는 다른 클래스를 상속받을 수 없다.
 * 
 *  - Runnable 인터페이스를 구현했을 경우에는 다른 인터페이스를 구현할 수 있으며 다른 클래스도 상속받을 수 있다.
 * 
 * */

//쓰레드 구현방법 1) Thread클래스를 상속받아서 구현한다.
class Music extends Thread{
	
//	void play() {
//		for (int i = 0; i < 10; i++) {
//			System.out.println("음악이 나오는 중");
//		}
//	}
	
	// Thread클래스에서 제공되는 메서드이며 병렬로 수행할 기능을 작성한다.
	@Override
	public void run() {
		for (int i = 0; i < 10; i++) {
			System.out.println("음악이 나오는 중");
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}

//쓰레드 구현방법 2) Runnable인터페이스를 구현하여 사용한다.
class Game implements Runnable{

	@Override
	public void run() {
		
		for (int i = 0; i < 10; i++) {
			System.out.println("게임을 하는 중");
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	
}


public class TechniqueEx14 {

	public static void main(String[] args) {

		// Thread클래스를 상속받을 경우 객체에서 start()메서드를 이용하여 쓰레드를 시작한다. 
		// 클래스안에 오버라이딩된 run()메서드를 호출한다.
		Music music = new Music();
		//music.play();
		music.start();
		
		
		
		// Runnable Interface를 구현할 경우 Thread객체에서 생성자의 인수로
		// Runnable Interface를 구현한 객체를 주입하여 새로운 객체를 만들고
		// 새로운 객체를 통해 .start()메서드를 이용하여 쓰레드를 시작한다. > run()메서드 호출
		Game game = new Game();
		Thread playGame = new Thread(game);
		playGame.start();
		
		
		
		for (int i = 0; i < 10; i++) {
			System.out.println("PC카톡을 하는 중");
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}
