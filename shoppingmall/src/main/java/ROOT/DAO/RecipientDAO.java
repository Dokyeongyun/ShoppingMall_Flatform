package ROOT.DAO;


import ROOT.VO.RecipientVO;

public interface RecipientDAO {

    /**
     * 수령자 정보 등록
     */
    void addRecipient(RecipientVO recipientVO);
}
