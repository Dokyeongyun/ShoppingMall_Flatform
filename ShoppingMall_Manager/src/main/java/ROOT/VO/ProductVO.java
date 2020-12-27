package ROOT.VO;

import java.io.Serializable;

public class ProductVO implements Serializable {

    private String pdtId;
    private String pdtName;
    private String pdtGroupType;
    private String pdtCategory;
    private String pdtDetail;
    private String pdtPeriodType;
    private String pdtSaleStartDate;
    private String pdtSaleStartTime;
    private String pdtSaleEndDate;
    private String pdtSaleEndTime;
    private int pdtPrice;
    private int pdtStockCnt;

    // getter
    public String getPdtId() { return pdtId; }
    public String getPdtName() { return pdtName; }
    public String getPdtGroupType() { return pdtGroupType; }
    public String getPdtCategory() { return pdtCategory; }
    public String getPdtDetail() { return pdtDetail; }
    public String getPdtPeriodType() { return pdtPeriodType; }
    public String getPdtSaleStartDate() { return pdtSaleStartDate; }
    public String getPdtSaleStartTime() { return pdtSaleStartTime; }
    public String getPdtSaleEndDate() { return pdtSaleEndDate; }
    public String getPdtSaleEndTime() { return pdtSaleEndTime; }
    public int getPdtPrice() { return pdtPrice; }
    public int getPdtStockCnt() { return pdtStockCnt; }

    // setter
    public void setPdtId(String pdtId) { this.pdtId = pdtId; }
    public void setPdtName(String pdtName) { this.pdtName = pdtName; }
    public void setPdtGroupType(String pdtGroupType) { this.pdtGroupType = pdtGroupType; }
    public void setPdtCategory(String pdtCategory) { this.pdtCategory = pdtCategory; }
    public void setPdtDetail(String pdtDetail) { this.pdtDetail = pdtDetail; }
    public void setPdtPeriodType(String pdtPeriodType) { this.pdtPeriodType = pdtPeriodType; }
    public void setPdtSaleStartDate(String pdtSaleStartDate) { this.pdtSaleStartDate = pdtSaleStartDate; }
    public void setPdtSaleStartTime(String pdtSaleStartTime) { this.pdtSaleStartTime = pdtSaleStartTime; }
    public void setPdtSaleEndDate(String pdtSaleEndDate) { this.pdtSaleEndDate = pdtSaleEndDate; }
    public void setPdtSaleEndTime(String pdtSaleEndTime) { this.pdtSaleEndTime = pdtSaleEndTime; }
    public void setPdtPrice(int pdtPrice) { this.pdtPrice = pdtPrice; }
    public void setPdtStockCnt(int pdtStockCnt) { this.pdtStockCnt = pdtStockCnt; }
}
