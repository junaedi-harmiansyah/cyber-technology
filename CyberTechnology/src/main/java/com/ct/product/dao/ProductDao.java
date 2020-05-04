package com.ct.product.dao;

import java.util.Collection;

import com.ct.product.model.Product;

public interface ProductDao {

	public Collection<Product> findAll();

	public void save(Product product);

	public Collection<Product> search(String name);

	public Product update(Product product);

	public Product findOne(Integer id);

	public Collection<Product> countMarketplace();


}
