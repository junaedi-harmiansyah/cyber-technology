package com.ct.product.service;

import java.util.Collection;

import com.ct.product.model.Product;

public interface ProductService {

	public Collection<Product> findAll();

	public Integer save(Product product);

	public Product update(Product product);

	public Product findOne(Integer id);

	public Collection<Product> countMarketplace();

	public Product saveTerjual(Product product);


}
