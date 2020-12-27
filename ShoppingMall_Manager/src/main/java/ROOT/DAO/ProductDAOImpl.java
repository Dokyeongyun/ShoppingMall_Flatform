package ROOT.DAO;

import ROOT.VO.ProductVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;

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
}
