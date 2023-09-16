package step5_02.file;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

// 파일 출력(로드 , 불러오기)

public class FileEx02 {

	public static void main(String[] args) {

		String fileName = "ex01.txt";
		File file = new File(fileName); 			// 파일 객체 생성
		
		FileReader fr     = null;
		BufferedReader br = null;
		
		// exists() : 파일이 존재하면 true반환 , 존재하지 않으면 false 반환
		if (file.exists()) {
			
			try {
				
				fr = new FileReader(file);    // 파일 읽어오기
				br = new BufferedReader(fr);  // 텍스트 읽어오기
			
				String data = br.readLine(); // readLine(); 한 줄을 읽어온다.
				System.out.println(data);
				System.out.println();
				
				data = br.readLine();
				System.out.println(data);
				System.out.println();
				
				// 전체 텍스트를 읽어오는 예시
				while (true) {
					
					data = br.readLine();
					// 읽어올 텍스트가 없으면 null을 반환한다.
					if (data == null) {
						break;
					}
					System.out.println(data);
					
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				// 나중에 생성한 객체를 먼저 close한다.
				if(br != null) try {br.close();} catch (IOException e) {e.printStackTrace();}
				if(fr != null) try {fr.close();} catch (IOException e) {e.printStackTrace();}
			}
			
		}
		
		
		
	
		
		
	}

}
