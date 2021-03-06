package epp.sayhi.toy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import epp.sayhi.toy.model.Product;
import epp.sayhi.toy.repository.ProductDAO;
import epp.sayhi.toy.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	ProductService productService;
	@Autowired
	ProductDAO productDAO;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String productList(Model model) {
		model.addAttribute("list", productService.getProductList());
		return "list";
	}

	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	public String uploadProduct() {
		return "uploadform";
	}

	@RequestMapping(value = "/uploadok", method = RequestMethod.POST)
	public String uploadProductOK(Product product) {
//
//		if (productService.uploadProduct(product) == 0)
//			System.out.println("업로드 성공");
//		else
//			System.out.println("업로드 실패");
		return "redirect:list";
	}

	@RequestMapping(value = "/fileform", method = RequestMethod.GET)
	public String fileupload() {
		return "fileform";
	}

	@RequestMapping(value = "/fileupload", method = RequestMethod.POST)
	public String fileuploadgo() {
		return "fileupload";
	}

	@RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
	public String detailPost(@PathVariable("id") int id, Model model) {
		Product product = productService.getProduct(id);
		model.addAttribute("u", product);
		return "detail";
	}
	
	@RequestMapping(value = "/editform{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
		Product product = productService.getProduct(id);
		model.addAttribute("u", product);
		return "editform";
	}
	
	@RequestMapping(value = "/editok", method = RequestMethod.POST)
	public String editPostOk(Product vo) {
		if(productService.updateProduct(vo) == 0)
			System.out.println("데이터 수정 실패");
		else
			System.out.println("데이터 수정 완료");
		return "redirect:list";
	}
	
	@RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
	public String deletePostOk(@PathVariable("id") int id) {
		if(productService.deleteProduct(id) == 0)
			System.out.println("데이터 삭제 실패");		
		else
			System.out.println("데이터 삭제 완료");
		return "redirect:../list";
	}
}
