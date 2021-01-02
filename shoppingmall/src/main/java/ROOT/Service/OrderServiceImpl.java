package ROOT.Service;

import ROOT.DAO.OrderDAO;
import ROOT.DAO.RecipientDAO;
import ROOT.VO.OrderVO;
import ROOT.VO.RecipientVO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

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
}
