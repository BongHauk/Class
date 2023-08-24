package step8_01.technique;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Scanner;

// # 생성자를 이용한 멤버변수 초기화

class GoodsDTO {
	
	String goodsCd;
	String goodsNm;
	int goodsPrice;
	
	void setData(String goodsCd, String goodsNm, int goodsPrice) {
		this.goodsCd = goodsCd;
		this.goodsNm = goodsNm;
		this.goodsPrice = goodsPrice;
	}
	// 생성자 단축키 > 좌측 상단 Source > Generate Constructor Using Fields..
	GoodsDTO(String goodsCd, String goodsNm, int goodsPrice) {
		super();
		this.goodsCd = goodsCd;
		this.goodsNm = goodsNm;
		this.goodsPrice = goodsPrice;
	}
	
	
}


public class TechniqueEx04_02 {

	public static void main(String[] args) {
		
		//before
		//GoodsDTO goodsDTO = new GoodsDTO();
		//goodsDTO.setData("0x001", "맨투맨", 40000);

		//after
		// 생성자를 이용한 멤버변수 초기화
		new GoodsDTO("0x001", "맨투맨", 40000);
		new GoodsDTO("0x002", "조거팬츠", 30000);
		new GoodsDTO("0x003", "바람막이", 70000);
		System.out.println();
		
		//사용예시
		Scanner scan = new Scanner(System.in);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		DecimalFormat df = new DecimalFormat("#,##0");
		
	}

}
