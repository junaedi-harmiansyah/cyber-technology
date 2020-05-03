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

		if (product.getMarketingId() != null) {
			if (product.getMarketingId() == 1) {
				product.setMarketing("OLX");
			} else if (product.getMarketingId() == 2) {
				product.setMarketing("BUKA LAPAK");
			} else if (product.getMarketingId() == 3) {
				product.setMarketing("TOKO PEDIA");
			} else {
				product.setMarketing("LAIN-LAIN");
			}

		}

		product.setModifiedBy("developer");
		product.setModifiedDate(new Date());
		product.setStatus(1);

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

	@Override
	public Product update(Product product) {
		product.setModifiedBy("developer");
		product.setModifiedDate(new Date());
		product.setStatus(1);
		if (product.getMarketingId() != null) {
			if (product.getMarketingId() == 1) {
				product.setMarketing("OLX");
			} else if (product.getMarketingId() == 2) {
				product.setMarketing("BUKA LAPAK");
			} else if (product.getMarketingId() == 3) {
				product.setMarketing("TOKO PEDIA");
			} else {
				product.setMarketing("LAIN-LAIN");
			}

		}
		if (product.getBuyPrice() != null && product.getSellingPrice() != null) {
			BigDecimal result = product.getSellingPrice().subtract(product.getBuyPrice());
			product.setMargin(result);
		}
		productDao.update(product);
		return product;
	}

	@Override
	public Product findOne(Integer id) {
		return productDao.findOne(id);
	}

}
