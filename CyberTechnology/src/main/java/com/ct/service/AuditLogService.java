package com.ct.service;

import java.util.Collection;

import com.ct.model.AuditLog;


public interface AuditLogService {

	public Collection<AuditLog> findAll();

	public AuditLog findOne(Integer id);

	public void delete(AuditLog auditLog);

	public void deleteById(Integer id);

	public AuditLog update(AuditLog auditLog);

	public void save(AuditLog auditLog);

	// ------------- tambahan

	public String objectToJsonString(Object object);

	public void logInsert(String jsonInsert);

	public void logUpdate(String jsonBefore, String jsonAfter);

	public void logDelete(String jsonDelete);
}