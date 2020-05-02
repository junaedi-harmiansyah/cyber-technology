package com.ct.product.service;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ct.product.dao.ProductDao;
import com.ct.product.model.Product;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;
	
	//@Autowired
	//dao market

	@Override
	public Collection<Product> findAll() {
		return productDao.findAll();
	}

	@Override
	public void save(Product product) {
		product.setCreateBy("developer");
		product.setCreateDate(new Date());
		product.setIsActive(1);
		if (product.getBuyPrice() != null && product.getSellingPrice() != null) {
			BigDecimal result = product.getSellingPrice().subtract(product.getBuyPrice());
			product.setMargin(result);
		}
		/*
		 * if (product.getMarketing() != null &&
		 * !product.getMarketing().equalsIgnoreCase("")) { Integer idMarket =
		 * productDao.retrieveIdByNameMarket(product.getMarketing().trim().toLowerCase()
		 * ); }
		 */
		product.setModifiedBy("developer");
		product.setModifiedDate(new Date());
		product.setStatus(1);
		product.setId(null);
		productDao.save(product);
	}

}
