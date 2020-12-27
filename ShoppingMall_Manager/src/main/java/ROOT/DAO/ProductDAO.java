package ROOT.DAO;


import ROOT.VO.ProductVO;

public interface ProductDAO {

    /**
     * 상품등록
     */
    void addProduct(ProductVO productVO);
}
