package com.ct.product.dao;

import java.util.Collection;

import com.ct.product.model.Product;

public interface ProductDao {

	public Collection<Product> findAll();

	public Collection<Product> search(String name);

}
