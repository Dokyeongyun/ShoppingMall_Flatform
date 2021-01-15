package ROOT.DAO;

import ROOT.VO.MemberVO;
import ROOT.VO.OrderVO;
import ROOT.VO.RecipientVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.List;

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

    /**
     * 개인별 주문내역 조회
     */
    public List<OrderVO> getOrderList(MemberVO memberVO){
        return sqlSession.selectList("orderMapper.getOrderList", memberVO);
    }

    /**
     * 주문번호별 주문상세내역
     */
    public List<OrderVO> getOrderDetail(OrderVO orderVO){
        return sqlSession.selectList("orderMapper.getOrderDetail", orderVO);
    }
}
