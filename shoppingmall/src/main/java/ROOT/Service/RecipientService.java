package ROOT.Service;

import ROOT.VO.ProductVO;
import ROOT.VO.RecipientVO;

import java.util.List;

public interface RecipientService {

    /**
     * 수령자 정보 등록
     */
    void addRecipient(RecipientVO recipientVO);
}
