package ROOT.Controller;

import ROOT.Service.MemberService;
import ROOT.Service.ShopService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.inject.Inject;

@Controller
@RequestMapping("/shop")
public class ShopController {

    @Inject
    ShopService service;

    @GetMapping(value = "/shopMainView")
    public void shopMainView(){ }
}
