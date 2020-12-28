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
     * 모든 상품리스트 가져오기
     */
    public List<ProductVO> getAllProductList(){
        return productDAO.getAllProductList();
    }
}
