package ROOT.DAO;

import ROOT.VO.OrderVO;
import ROOT.VO.RecipientVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;

@Repository
public class OrderDAOImpl implements OrderDAO {

    @Inject
    private SqlSession sqlSession;

    /**
     * 주문 정보 등록
     */
    public void addOrder(OrderVO orderVO) {
        sqlSession.insert("orderMapper.addOrder", orderVO);
    }
}
