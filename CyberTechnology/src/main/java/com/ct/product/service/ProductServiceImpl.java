package com.ct.product.service;

import java.util.Collection;


import org.springframework.transaction.annotation.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ct.product.dao.ProductDao;
import com.ct.product.model.Product;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDao productDao;
	
	@Override
	public Collection<Product> findAll(){
		return productDao.findAll();
	}

	@Override
	public Collection<Product> search(String name) {
		return productDao.search(name);
	}
}
