package step4_01.string;

/* 
 * # 문자열 관련 메서드
 * 
 * 1. 문자열.length() 							: 문자열의 길이를 반환한다. (반환타입은 int)
 * 2. 문자열.indexOf("문자열") 					: 특정문자열이 포함된 위치를 반환한다.  (반환타입은 int)
 * 3. 문자열.charAt(?번째)      				: 문자열의 ?번째에에 포함된 데이터를 반환한다. (반환 타입은 char)
 * 4. 문자열.substring(index1이상, index2미만)  : 특정문자열의 index1이상 index2미만의 문자열을 잘라서 반환한다. (반환타입은 String)
 *    문자열.substring(index1)  				: 특정문자열의 index1이상부터 끝까지의 문자열을 잘라서 반환한다. (반환타입은 String)
 * 5. 문자열.split("구분자")					: 구분자로 문자열을 잘라서 반환한다. (반환타입은 String 배열)
 * 
 */

public class StringEx03 {

	public static void main(String[] args) {

		String str = "megait";
		System.out.println(str);
		System.out.println("\n================\n");
		
		// [1] length() : 문자열의 길이
		System.out.println(str.length());
		int length = str.length();
		System.out.println(length);
		System.out.println("\n================\n");
		
		
		// [2] indexOf("글자") : 글자가 포함된 인덱스 확인
		System.out.println(str.indexOf("m"));
		System.out.println(str.indexOf("e"));
		System.out.println(str.indexOf("g"));
		System.out.println(str.indexOf("a"));
		System.out.println(str.indexOf("i"));
		System.out.println(str.indexOf("t"));
		System.out.println(str.indexOf("mega"));
		System.out.println(str.indexOf("it"));
		System.out.println("\n================\n");
		
		
		// [3] charAt(index) : 문자 한개 추출 (인덱싱)
		System.out.println(str.charAt(0));
		System.out.println(str.charAt(1));
		char ch = str.charAt(2); // (중요) charAt메서드의 결과는 char 데이터타입이다.
		System.out.println(ch);
		System.out.println(str.charAt(str.length() - 1));
		System.out.println();
		
		for (int i = 0; i < str.length(); i++) {
			System.out.print(str.charAt(i) + " ");
		}
		System.out.println("\n================\n");
		
		
		// [4] substring() : 문자 여러개 추출 (슬라이싱)
		// 4-1) substring(index1이상, index2미만)
		System.out.println(str.substring(0 , 4));
		System.out.println(str.substring(4 , 6));
		String subStr = str.substring(2 , 4);
		System.out.println(subStr);
		System.out.println();
		
		// 4-2) substring(index1부터 끝까지)
		System.out.println(str.substring(2));
		System.out.println(str.substring(4));
		System.out.println("\n================\n");
		
		// [5] split("구분자") : 구분자로 잘라내기
		String str1 = "a/b/c/d/e/f/g";
		String str2 = "aa&bb&cc";
		String str3 = "aaa.bbb.ccc.ddd.eee"; // 특이케이스 \\. (이스케이프문자로 구분)
		
		String[] temp = str1.split("/");
		System.out.println(temp.length);
		for (int i = 0; i < temp.length; i++) {
			System.out.print(temp[i] + " ");
		}
		System.out.println();
		
		temp = str2.split("&");
		System.out.println(temp.length);
		for (int i = 0; i < temp.length; i++) {
			System.out.print(temp[i] + " ");
		}
		System.out.println();
		
		temp = str3.split("\\.");
		System.out.println(temp.length);
		for (int i = 0; i < temp.length; i++) {
			System.out.print(temp[i] + " ");
		}
		System.out.println();
		System.out.println("\n================\n");
		
		// (참고) compareTo() : 문자열 비교
		str1 = "server";
		str2 = "client";
		str3 = "server";
		
		System.out.println(str1.compareTo(str2)); // 왼쪽데이터(기준)가 클 경우는 양수가 반환된다.
		System.out.println(str2.compareTo(str1)); // 왼쪽데이터(기준)가 작을 경우는 음수가 반환된다.
		System.out.println(str1.compareTo(str3)); // 양쪽데이터가 같을 경우 0이 반환된다.
		
		
		
	}

}
