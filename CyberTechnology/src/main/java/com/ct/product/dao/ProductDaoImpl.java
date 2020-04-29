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
		StringBuilder hql = new StringBuilder();
		hql.append("FROM Product p");
		if (name != null && !name.equalsIgnoreCase("")) {
			hql.append(" WHERE p.name = :name ");
		}
		Query sql = getCurrentSession().createQuery(hql.toString());
		if (name != null && !name.equalsIgnoreCase("")) {
			sql.setParameter("name", name);
		}
		
		Collection<Product> result = sql.list();
		return result;
	}
}
