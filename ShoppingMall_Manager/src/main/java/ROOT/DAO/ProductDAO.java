package ROOT.DAO;


import ROOT.VO.ProductVO;

import java.util.List;

public interface ProductDAO {

    /**
     * 상품등록
     */
    void addProduct(ProductVO productVO);

    /**
     * 모든 상품리스트 가져오기
     */
    List<ProductVO> getAllProductList();
}
