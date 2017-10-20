package com.ssh.oa.base;

import java.util.*;

public interface BaseDao<T> {

	/**
	 * 保存
	 */
	public void save(T t) throws Exception;
	/**
	 * 根据id删除
	 */
	public void delete(Long id)throws Exception;
	/**
	 * 修改
	 */
	public void update(T t)throws Exception;
	/**
	 * 根据id查询
	 */
	public T getById(Long id)throws Exception;
	/**
	 * 根据多个id查询
	 */
	public List<T> getByIds(Long[] ids)throws Exception;
	/**
	 * 查询所有
	 */
	public List<T> findAll()throws Exception;
	
}
