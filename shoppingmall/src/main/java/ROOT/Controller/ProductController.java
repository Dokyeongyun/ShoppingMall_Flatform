package ROOT.Controller;

import ROOT.Service.ProductService;
import ROOT.VO.MemberVO;
import ROOT.VO.ProductVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.inject.Inject;

@Controller
@RequestMapping("/shop")
public class ProductController {

    @Inject
    ProductService service;

    @GetMapping(value = "/shopMainView")
    public ModelAndView shopMainView(Model model){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("/shop/shopMainView");
        mv.addObject("products", service.getDisplayProducts());
//        model.addAttribute("products", service.getDisplayProducts());
        return mv;
    }

    @GetMapping(value = "/productDetail/{pdtId}")
    public ModelAndView productDetail(ProductVO productVO){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("/shop/productDetail");
        mv.addObject("productDetail", service.getProductDetail(productVO));
        return mv;
    }

    @ResponseBody
    @PostMapping("/getProductInfo")
    public ProductVO getProductInfo(ProductVO productVO){
        return service.getProductDetail(productVO);
    }
}
