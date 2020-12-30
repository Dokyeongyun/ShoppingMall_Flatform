package ROOT.Service;

import ROOT.VO.ProductVO;

import java.util.List;

public interface ProductService {

    /**
     * 상품등록
     */
    void addProduct(ProductVO productVO);

    /**
     * 전시중인 상품리스트 가져오기
     */
    List<ProductVO> getDisplayProducts();

    /**
     * 상품 상세정보 읽기
     */
    ProductVO getProductDetail(ProductVO productVO);
}
