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
	public Integer save(Product product) {
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
		product.setMarketing("OLX");
		product.setMarketingId(1);
		Integer countName = this.checkName(product.getName());
		if (countName > 0) {
			product.setName(product.getName());
			return 1;
		} else {
			productDao.save(product);
			return 2;
		}
	}

	private Integer checkName(String name) {
		Collection<Product> list = productDao.search(name);
		Integer countName = 0;
		if (list == null) {
			countName = 0;
		} else {
			countName = list.size();
		}
		return countName;
	}

}
