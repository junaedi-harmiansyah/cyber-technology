package com.ct.product.service;

import java.util.Collection;

import com.ct.product.model.Product;

public interface ProductService {

	public Collection<Product> findAll();

	public Collection<Product> search(String name);

}
