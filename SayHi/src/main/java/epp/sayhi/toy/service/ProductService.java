package epp.sayhi.toy.service;

import java.util.List;

import epp.sayhi.toy.model.Product;

public interface ProductService {

	public int uploadProduct(Product vo);

	public List<Product> getProductList();

	public Product getProduct(int id);
}
