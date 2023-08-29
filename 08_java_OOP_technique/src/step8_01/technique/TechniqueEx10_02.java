package step8_01.technique;

import java.util.ArrayList;

public interface TechniqueEx10_02 {

	public abstract void addProduct(ProductDTO productDTO);
	public abstract ArrayList<ProductDTO> getProductList();
	public abstract ProductDTO getProductDetail(long productCd);
	public void setProduct(ProductDTO productDTO);
	public void removeProductOne(long productCd);
	public void removeProductList(long[] productCdList);
	
}
