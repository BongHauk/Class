package step8_01.technique;

/*
 * 
 *  # 캡슐화 (Capsulation)
 * 
 * - 접근제어자 : public , private  + getter/setter
 * 
 * [ 접근제어자(Modifier)의 종류 ]
 * 
 * public  : 프로젝트 전체에서 접근 가능
 * private : 클래스 내부에서만 접근 가능
 * 
 * default(package) : 패키지 내에서만 접근가능
 * protected        : 상속관계에서 접근 가능
 * 
 * 
 *  - 클래스에는 package , public 접근제어자만 사용 가능하다.
 *  - 하나의 클래스 파일에는 하나의 public 클래스만 사용할 수 있다.
 * 
 * */

class ModifierTest{
	
	private int a;
	public int b;
	
	// private 변수를 외부로 반환하는 메서드 getter
	public int getA() { // 변수명 앞에 get 을 추가하여 메서드 이름을 작성한다.
		return a;
	}
	// private 변수를 외부에서 수정하는 메서드 setter
	public void setA(int a) { // 변수명 앞에 set 을 추가하여 메서드 이름을 작성한다.
		this.a = a;
	}
	
}

// DTO(Data Transfer Object) 	: 데이터 전송 객체
// VO(Value Object) 			: 데이터 객체
// BO(Business Object) 			: 비즈니스 객체
class ProductDTO{
	
	private String productCd;
	private String productNm;
	private int price;
	private String brandCd;
	private String brandNm;
	
	public String getProductCd() {
		return productCd;
	}
	public void setProductCd(String productCd) {
		this.productCd = productCd;
	}
	public String getProductNm() {
		return productNm;
	}
	public void setProductNm(String productNm) {
		this.productNm = productNm;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getBrandCd() {
		return brandCd;
	}
	public void setBrandCd(String brandCd) {
		this.brandCd = brandCd;
	}
	public String getBrandNm() {
		return brandNm;
	}
	public void setBrandNm(String brandNm) {
		this.brandNm = brandNm;
	}
	
	
	
}

public class TechniqueEx02_01 {

	public static void main(String[] args) {

		ModifierTest object = new ModifierTest();
		
		// private변수는 클래스 외부에서 접근 불가
		//object.a = 1000;
		object.setA(1000);					// setter를 사용하여 private 변수에 데이터 수정
		System.out.println(object.getA());	// getter를 사용하여 private 데이터 반환
		
		
		object.b = 2000;
		System.out.println(object.b);
		
		System.out.println();
		ProductDTO productDTO = new ProductDTO();
		//productDTO.productCd = "0x001";
		//productDTO.productNm = "기계식키보드";
		
		productDTO.setProductCd("0x001");
		productDTO.setProductNm("기계식키보드");
		productDTO.setPrice(45000);
		productDTO.setBrandCd("b1");
		productDTO.setBrandNm("로지텍");
		
		System.out.println(productDTO.getProductCd());
		System.out.println(productDTO.getProductNm());
		System.out.println(productDTO.getPrice());
		System.out.println(productDTO.getBrandCd());
		System.out.println(productDTO.getBrandNm());
		
	}

}
