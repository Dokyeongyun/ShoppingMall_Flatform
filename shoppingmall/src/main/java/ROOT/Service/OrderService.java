package ROOT.Service;

import ROOT.VO.OrderVO;

public interface OrderService {

    /**
     * 주문 정보 등록
     */
    void addOrder(OrderVO orderVO);
}
