package ROOT.Controller;

import ROOT.Service.ProductService;
import ROOT.VO.ProductVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.inject.Inject;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Inject
    ProductService service;

    /**
     * 상품등록 화면
     */
    @GetMapping("/addProductView")
    public void addProductView(){ }

    /**
     * 상품등록
     */
    @PostMapping("/addProduct")
    public String addProduct(ProductVO productVO) {
        service.addProduct(productVO);
        return "redirect:/";
    }

    /**
     * 상품리스트 화면
     */
    @GetMapping("/showProductList")
    public ModelAndView showProductList(){
        List<ProductVO> productList = service.getAllProductList();

        ModelAndView mv = new ModelAndView();
        mv.setViewName("/product/showProductList");
        mv.addObject("productList", productList);

        return mv;
    }
}
