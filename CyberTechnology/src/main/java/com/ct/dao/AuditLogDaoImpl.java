package com.ct.dao;


import org.springframework.stereotype.Repository;

import com.ct.model.AuditLog;


@Repository
public class AuditLogDaoImpl extends AbstractHibernateDao<AuditLog> implements AuditLogDao {

	public AuditLogDaoImpl () {
		setClazz(AuditLog.class);
	}

}