package step7_01.objectArray;

//2023.08.17 따라 써 보기 start : 13:10 end : 14:00

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

class StudentEx2{
	String id;
	String pw;
	
	void printData() {
		System.out.println("이름 : " + id + " 비밀번호  : " + pw);
	}
}

class Controller2 {
	StudentEx2[] list = null;
	int stdCnt = 0;
	
	void addStudentEx(StudentEx2 st) {
		if(stdCnt == 0) {
			list = new StudentEx2[1];
		}else if(stdCnt > 0) {
			StudentEx2[] temp = list;
			list = new StudentEx2[stdCnt + 1];
			for (int i = 0; i < stdCnt; i++) {
				list[i] = temp[i];
			}
			temp = null;
		}
		list[stdCnt] = st;
		stdCnt++;
	}
	
	StudentEx2 removeStudentEx2 (int index) {
		StudentEx2 deleteObj = list[index];
		if(stdCnt == 1) {
			list = null;
		}else if (stdCnt > 1) {
			StudentEx2[] temp = list;
			list = new StudentEx2[stdCnt - 1];
			for (int i = 0; i < index; i++) {
				list[i] = temp[i];
			}
			for (int i = 0; i < stdCnt -1; i++) {
				list[i] = temp[i+1];
			}
			temp = null;
		}
		stdCnt--;
		return deleteObj;
	}
	
	int checkId(StudentEx2 st) {
		int check = -1;
		for (int i = 0; i < stdCnt; i++) {
			if(list[i].id.equals(st.id)) {
				check = i;
				break;
			}
		}
		return check;
	}
	
	void printStudentEx() {
		for (int i = 0; i < stdCnt; i++) {
			list[i].printData();
		}
	}
	
	String outData() {
		String data = "";
		if (stdCnt == 0) {
			return data;
		}
		data += stdCnt;
		data += "\n";
		for (int i = 0; i < stdCnt; i++) {
			data += list[i].id;
			data += ",";
			data += list[i].pw;
			if(stdCnt -1 != i) {
				data += "\n";
			}
		}
		return data;
	}
	
	void sortData() {
		for (int i = 0; i < stdCnt; i++) {
			for (int j = 0; j < stdCnt; j++) {
				if(list[i].id.compareTo(list[j].id) > 0) {
					StudentEx2 temp = list[i];
					list[i] = list[j];
					list[j] = temp;
				}
			}
		}
	}
	
	void loadStudentEx2 (StudentEx2[] temp, int count) {
		this.stdCnt = count;
		this.list = temp;
		
	}
	
}

public class ObjectArrayEx09_연습2{
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		Controller2 controller = new Controller2();
		
		String fileName = "student2_db.txt";
		
		while(true) {
			System.out.println("1.가입 2.탈퇴 3.정렬 4.출력 5.저장 6.로드 7.종료");
			int sel = scan.nextInt();
			
			if (sel ==1) {
				StudentEx2 temp = new StudentEx2();
				System.out.println("[가입] id 를 입력하세요 >>> ");
				temp.id = scan.next();
				int check = controller.checkId(temp);
				
				if (check == -1) {
					System.out.println("[가입] pw 를 입력하세요 >>> ");
					temp.pw = scan.next();
					controller.addStudentEx(temp);
					System.out.println(temp.id + "님 가입을 축하합니다.");
				}else {
					System.out.println("중복된 아이디 입니다.");
				}
				
			}else if(sel == 2) {
				controller.printStudentEx();
				
				StudentEx2 temp = new StudentEx2();
				System.out.println("[탈퇴] id 를 입력하세요 >>> ");
				temp.id = scan.next();
				int check = controller.checkId(temp);
				
				if(check == -1) {
					System.out.println("없는 아이디 입니다.");
				}else {
					StudentEx2 del_st = controller.removeStudentEx2(check);
					System.out.println(del_st.id + "임 탈퇴 되었습니다.");
				}
			}else if (sel == 3) {
				controller.sortData();
				controller.printStudentEx();
			}else if (sel == 4) {
				controller.printStudentEx();
			}else if (sel == 5) {
				if (controller.stdCnt == 0) continue;
				FileWriter fw = null;
				try {
					fw = new FileWriter(fileName);
					String data = controller.outData();
					if(!data.equals("")) {
						fw.write(data);
						System.out.println(data);
					}
				}catch(Exception e) {
					e.printStackTrace();
				}finally {
					try {fw.close();}catch(IOException e) {e.printStackTrace();}
				}
			}else if (sel == 6) {
				FileReader fr = null;
				BufferedReader br = null;
				
				try {
					File file = new File(fileName);
					
					if(file.exists()) {
						fr = new FileReader(file);
						br = new BufferedReader(fr);
						
						String line = br.readLine();
						int count = Integer.parseInt(line);
						StudentEx2[] temp = new StudentEx2[count];
						
						for (int i = 0; i < count; i++) {
							temp[i] = new StudentEx2();
							line = br.readLine();
							String[] value = line.split(",");
							temp[i].id = value[0];
							temp[i].pw = value[1];
						}
						controller.loadStudentEx2(temp, count);
					}
					controller.printStudentEx();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally {
					try {br.close();} catch (IOException e) {e.printStackTrace();}
					try {fr.close();} catch (IOException e) {e.printStackTrace();}
				}
			}else if(sel == 7) {
				System.out.println("종료.");
				break;
			}
		}
		
		scan.close();
		
		
		
	}
}