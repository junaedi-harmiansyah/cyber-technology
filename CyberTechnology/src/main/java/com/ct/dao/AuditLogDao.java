package com.ct.dao;

import java.util.Collection;

import com.ct.model.AuditLog;


public interface AuditLogDao {

	public Collection<AuditLog> findAll();
	public AuditLog findOne(Integer id);
	public void delete(AuditLog auditLog);
	public void deleteById(Integer id);
	public AuditLog update(AuditLog auditLog);
	public void save(AuditLog auditLog);
	
}