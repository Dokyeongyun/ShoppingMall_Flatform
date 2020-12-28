package ROOT.Service;

import ROOT.VO.ProductVO;

import java.util.List;

public interface ProductService {

    /**
     * 상품등록
     */
    void addProduct(ProductVO productVO);

    /**
     * 모든 상품리스트 가져오기
     */
    List<ProductVO> getAllProductList();
}
