package ROOT.Service;

import ROOT.DAO.ProductDAO;
import ROOT.VO.ProductVO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

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
}
