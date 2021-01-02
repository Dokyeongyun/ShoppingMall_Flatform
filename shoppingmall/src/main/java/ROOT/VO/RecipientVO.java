package ROOT.VO;

import java.io.Serializable;

public class RecipientVO implements Serializable {
    private int recipientId;
    private String recipientName;
    private String recipientPhone;
    private String recipientAddress;
    private String recipientMemo;
    private String userId;

    public int getRecipientId() { return recipientId; }
    public String getRecipientName() { return recipientName; }
    public String getRecipientPhone() { return recipientPhone; }
    public String getRecipientAddress() { return recipientAddress; }
    public String getRecipientMemo() { return recipientMemo; }
    public String getUserId() { return userId; }

    public void setRecipientId(int recipientId) { this.recipientId = recipientId; }
    public void setRecipientName(String recipientName) { this.recipientName = recipientName; }
    public void setRecipientPhone(String recipientPhone) { this.recipientPhone = recipientPhone; }
    public void setRecipientAddress(String recipientAddress) { this.recipientAddress = recipientAddress; }
    public void setRecipientMemo(String recipientMemo) { this.recipientMemo = recipientMemo; }
    public void setUserId(String userId) { this.userId = userId; }

    @Override
    public String toString() {
        return "RecipientVO{" +
                "recipientId=" + recipientId +
                ", recipientName='" + recipientName + '\'' +
                ", recipientPhone='" + recipientPhone + '\'' +
                ", recipientAddress='" + recipientAddress + '\'' +
                ", recipientMemo='" + recipientMemo + '\'' +
                ", userId='" + userId + '\'' +
                '}';
    }
}
