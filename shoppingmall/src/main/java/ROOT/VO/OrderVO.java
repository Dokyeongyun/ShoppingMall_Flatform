package ROOT.VO;

import java.io.Serializable;

public class OrderVO implements Serializable {
    private ProductVO productVO;
    private MemberVO memberVO;
    private int quantity;
    private String paymentType;
    private int totalAmount;
    private RecipientVO recipientVO;

    public ProductVO getProductVO() { return productVO; }
    public MemberVO getMemberVO() { return memberVO; }
    public int getQuantity() { return quantity; }
    public int getTotalAmount() { return totalAmount; }
    public String getPaymentType() { return paymentType; }
    public RecipientVO getRecipientVO() { return recipientVO; }

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
