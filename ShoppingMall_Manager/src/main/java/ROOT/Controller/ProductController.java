package ROOT.Controller;

import ROOT.Service.ProductService;
import ROOT.VO.ProductVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.inject.Inject;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Inject
    ProductService service;

    @GetMapping("/addProductView")
    public void addProductView(){ }

    @PostMapping("/addProduct")
    public String addProduct(ProductVO productVO) {
        service.addProduct(productVO);
        return "redirect:/";
    }
}
