package ROOT.Service;

import ROOT.DAO.ProductDAO;
import ROOT.DAO.RecipientDAO;
import ROOT.VO.ProductVO;
import ROOT.VO.RecipientVO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class RecipientServiceImpl implements RecipientService {

    @Inject
    RecipientDAO recipientDAO;

    /**
     * 수령자 정보 등록
     */
    public void addRecipient(RecipientVO recipientVO) {
        recipientDAO.addRecipient(recipientVO);
    }
}
