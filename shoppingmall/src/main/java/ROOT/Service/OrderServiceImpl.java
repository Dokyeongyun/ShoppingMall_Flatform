package ROOT.Service;

import ROOT.DAO.OrderDAO;
import ROOT.DAO.RecipientDAO;
import ROOT.VO.MemberVO;
import ROOT.VO.OrderVO;
import ROOT.VO.RecipientVO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Inject
    OrderDAO orderDAO;

    /**
     * 주문 정보 등록
     */
    public void addOrder(OrderVO orderVO) {
        orderDAO.addOrder(orderVO);
    }

    /**
     * 개인별 주문내역 조회
     */
    public List<OrderVO> getOrderList(MemberVO memberVO){
        return orderDAO.getOrderList(memberVO);
    }
}
