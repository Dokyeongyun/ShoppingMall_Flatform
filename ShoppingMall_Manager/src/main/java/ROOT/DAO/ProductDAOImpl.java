package ROOT.DAO;

import ROOT.VO.ProductVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.List;

@Repository
public class ProductDAOImpl implements ProductDAO {

    @Inject
    private SqlSession sqlSession;

    /**
     * 상품등록
     */
    public void addProduct(ProductVO productVO){
        sqlSession.insert("productMapper.addProduct", productVO);
    }

    /**
     * 모든 상품리스트 가져오기
     */
    public List<ProductVO> getAllProductList(){
        return sqlSession.selectList("productMapper.getAllProductList");
    }
}
