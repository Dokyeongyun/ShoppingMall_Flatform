package ROOT.Service;

import ROOT.DAO.ProductDAO;
import ROOT.VO.ProductVO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Inject
    ProductDAO productDAO;

    /**
     * 상품등록
     */
    public void addProduct(ProductVO productVO) {
        productDAO.addProduct(productVO);
    }

    /**
     * 전시중인 상품리스트 가져오기
     */
    public List<ProductVO> getDisplayProducts(){
        return productDAO.getDisplayProducts();
    }

    /**
     * 상품 상세정보 읽기
     */
    public ProductVO getProductDetail(ProductVO productVO){
        return productDAO.getProductDetail(productVO);
    }
}
