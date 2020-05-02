package com.ct.product.dao;

import java.util.Collection;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.ct.dao.AbstractHibernateDao;
import com.ct.product.model.Product;

@Repository
public class ProductDaoImpl extends AbstractHibernateDao<Product> implements ProductDao {

	public ProductDaoImpl() {
		setClazz(Product.class);
	}

	@Override
	public Collection<Product> search(String name) {
		String hql = " FROM Product B ";
		Query q = getCurrentSession().createQuery(hql);
		Collection<Product> result = q.list();
		return result;
	}

}
