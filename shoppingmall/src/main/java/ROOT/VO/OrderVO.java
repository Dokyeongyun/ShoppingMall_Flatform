package ROOT.VO;

import java.io.Serializable;

public class OrderVO implements Serializable {
    private int orderNo;
    private String orderDate;
    private String orderStatusType;
    private ProductVO productVO;
    private MemberVO memberVO;
    private int quantity;
    private String paymentType;
    private int totalAmount;
    private RecipientVO recipientVO;

    public int getOrderNo() { return orderNo; }
    public String getOrderDate() { return orderDate; }
    public String getOrderStatusType() { return orderStatusType; }
    public ProductVO getProductVO() { return productVO; }
    public MemberVO getMemberVO() { return memberVO; }
    public int getQuantity() { return quantity; }
    public int getTotalAmount() { return totalAmount; }
    public String getPaymentType() { return paymentType; }
    public RecipientVO getRecipientVO() { return recipientVO; }

    public void setOrderNo(int orderNo) { this.orderNo = orderNo; }
    public void setOrderDate(String orderDate) { this.orderDate = orderDate; }
    public void setOrderStatusType(String orderStatusType) { this.orderStatusType = orderStatusType; }
    public void setProductVO(ProductVO productVO) { this.productVO = productVO; }
    public void setMemberVO(MemberVO memberVO) { this.memberVO = memberVO; }
    public void setQuantity(int quantity) { this.quantity = quantity; }
    public void setPaymentType(String paymentType) { this.paymentType = paymentType; }
    public void setTotalAmount(int totalAmount) { this.totalAmount = totalAmount; }
    public void setRecipientVO(RecipientVO recipientVO) { this.recipientVO = recipientVO; }

    @Override
    public String toString() {
        return "OrderVO{" +
                "productVO=" + productVO +
                ", memberVO=" + memberVO +
                ", quantity=" + quantity +
                ", paymentType='" + paymentType + '\'' +
                ", totalAmount=" + totalAmount +
                '}';
    }
}
