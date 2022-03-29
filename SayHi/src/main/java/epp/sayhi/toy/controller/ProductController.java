package epp.sayhi.toy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import epp.sayhi.toy.model.Product;
import epp.sayhi.toy.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String productList(Model model) {
		model.addAttribute("list", productService.getProductList());
		return "list";
	}
	
	@RequestMapping(value="/upload", method=RequestMethod.GET)
	public String uploadProduct() {
		return "uploadform";
	}
	
	@RequestMapping(value="/uploadok", method=RequestMethod.POST)
	public String uploadProductOK(Product product) {
		if(productService.uploadProduct(product) == 0)
			System.out.println("업로드 성공");
		else
			System.out.println("업로드 실패");
		return "redirect:list";
	}

}
