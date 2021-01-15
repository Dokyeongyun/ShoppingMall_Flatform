package ROOT.Service;

import ROOT.VO.MemberVO;
import ROOT.VO.OrderVO;

import java.util.List;

public interface OrderService {

    /**
     * 주문 정보 등록
     */
    void addOrder(OrderVO orderVO);

    /**
     * 개인별 주문내역 조회
     */
    List<OrderVO> getOrderList(MemberVO memberVO);

    /**
     * 주문번호별 주문상세내역
     */
    List<OrderVO> getOrderDetail(OrderVO orderVO);
}
