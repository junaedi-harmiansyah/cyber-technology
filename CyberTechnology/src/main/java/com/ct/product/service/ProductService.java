package com.ct.product.service;

import java.util.Collection;
import java.util.List;

import com.ct.product.model.Product;

public interface ProductService {

	public Collection<Product> findAll();

	public Integer save(Product product, String username);

	public Product update(Product product);

	public Product findOne(Integer id);

	public List<String> countMarketplace();

	public Product saveTerjual(Product product);


}
