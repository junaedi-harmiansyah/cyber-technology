package com.ct.product.dao;

import org.springframework.stereotype.Repository;

import com.ct.dao.AbstractHibernateDao;
import com.ct.product.model.Product;

@Repository
public class ProductDaoImpl extends AbstractHibernateDao<Product> implements ProductDao {

	public ProductDaoImpl() {
		setClazz(Product.class);
	}

}
