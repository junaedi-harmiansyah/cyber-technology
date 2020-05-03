package com.ct.product.dao;

import java.util.Collection;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.ct.dao.AbstractHibernateDao;
import com.ct.product.model.Product;

/**
 * @author ZenBook
 *
 */
@Repository
public class ProductDaoImpl extends AbstractHibernateDao<Product> implements ProductDao {

	public ProductDaoImpl() {
		setClazz(Product.class);
	}

	// To do search name duplicate in database
	@Override
	public Collection<Product> search(String name) {
		StringBuilder sql = new StringBuilder();
		sql.append(" FROM Product p ");
		if (name != null && !name.equalsIgnoreCase("")) {
			sql.append(" WHERE p.name = '" + name + "'");
		}
		Query q = getCurrentSession().createQuery(sql.toString());
		Collection<Product> result = q.list();
		return result;
	}

}
