package ROOT.Service;

import ROOT.DAO.MemberDAO;
import ROOT.DAO.ShopDAO;
import ROOT.VO.MemberVO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class ShopServiceImpl implements ShopService {

    @Inject
    private ShopDAO shopDAO;

}
