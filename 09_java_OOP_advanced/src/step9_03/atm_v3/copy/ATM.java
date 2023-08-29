package step9_03.atm_v3.copy;

import java.util.Random;
import java.util.Scanner;

public class ATM {
	
	static Scanner scan = new Scanner(System.in);
	static Random ran = new Random();
	
	ATM(){
		
		boolean isLoad = FileManager.getInstance().loadData();
		
		if(!isLoad) {
			UserManager.getInstance().setDummy();
			FileManager.getInstance().saveData();
		}
	}
}