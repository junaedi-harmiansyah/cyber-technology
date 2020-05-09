package com.ct.product.dao;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
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

	@Override
	public List<String> countMarketplace() {

		StringBuilder sql = new StringBuilder();
		sql.append(" SELECT p.marketing, COUNT(p.id) FROM Product p GROUP BY  p.marketing ");
		Query q = getCurrentSession().createQuery(sql.toString());
		List<Product> result = q.list();
		List<Object[]> resultObject = (List<Object[]>) q.list();
		List<String> resultSet= new ArrayList<String>();
		for (Object[] ob : resultObject) {
			resultSet.add(ob[0].toString());
			resultSet.add(ob[1].toString());
		}
		return resultSet;

	}

}
