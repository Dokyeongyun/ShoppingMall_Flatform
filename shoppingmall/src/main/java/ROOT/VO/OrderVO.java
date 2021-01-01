package ROOT.VO;

import java.io.Serializable;

public class OrderVO implements Serializable {
    private int pdtId;
    private String memberId;
    private int quantity;

    public int getPdtId() { return pdtId; }
    public String getMemberId() { return memberId; }
    public int getQuantity() { return quantity; }

    public void setPdtId(int pdtId) { this.pdtId = pdtId; }
    public void setMemberId(String memberId) { this.memberId = memberId; }
    public void setQuantity(int quantity) { this.quantity = quantity; }

    @Override
    public String toString() {
        return "OrderVO{" +
                "pdtId=" + pdtId +
                ", memberId='" + memberId + '\'' +
                ", quantity=" + quantity +
                '}';
    }
}
