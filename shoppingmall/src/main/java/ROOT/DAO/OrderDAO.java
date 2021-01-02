package ROOT.DAO;


import ROOT.VO.OrderVO;

public interface OrderDAO {

    /**
     * 주문 정보 등록
     */
    void addOrder(OrderVO orderVO);
}
