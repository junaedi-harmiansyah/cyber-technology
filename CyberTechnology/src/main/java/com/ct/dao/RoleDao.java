package com.ct.dao;

import java.util.Collection;

import com.ct.model.Role;


public interface RoleDao {
	public Role findOne(Integer id);

	public Collection<Role> findAll();

	public void save(Role role);

	public Role update(Role role);

	public void delete(Role role);

	public void deleteById(Integer id);

	public Collection<Role> search(String name);
}