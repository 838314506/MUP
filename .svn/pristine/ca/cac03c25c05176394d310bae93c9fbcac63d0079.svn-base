package com.zhg.javakc.base.service.impl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;

/**
 * 基础逻辑层实现类
 * @author zhou
 * @ersion v0.1
 * @param <D>
 * @param <T>
 */

@Service
public class BaseServiceImpl <T> implements BaseService <T> {
	
	@Resource(name="baseDao")
	private BaseDao<T> baseDao;
	
	public void create(T obj) {
		baseDao.create(obj);
	}

	public void createOrupdate(T obj) {
		baseDao.createOrupdate(obj);
	}

	public void delete(T obj) {
		baseDao.delete(obj);
	}

	public void delete(Class cls, String[] ids) {
		StringBuffer buf=new StringBuffer(" delete ");
		buf.append(cls.getName());
		buf.append(" where 1=2 ");
		for(int i=0;i<ids.length;i++){
			buf.append(" or id= '"+ids[i]+"' ");
		}
		baseDao.execute(buf.toString());
	}

	public <T> T get(Class<T> cls, Serializable id) {
		return (T) baseDao.get(cls, id);
	}

	public <T> T load(Class<T> cls, Serializable id) {
		return (T) baseDao.load(cls, id);
	}

	public List<T> queryAll(String hql) {
		return baseDao.queryAll(hql);
	}

	public List<T> queryByCondition(String hql, Map<String, Object> data) {
		return baseDao.queryByCondition(hql, data);
	}

	public long queryCountByCondition(String hql, Map<String, Object> data) {
		return baseDao.queryCountByCondition(hql, data);
	}

	public List<T> queryPageByCondition(String hql, Map<String, Object> data, int page, int rows) {
		return baseDao.queryPageByCondition(hql, data, page, rows);
	}
	
	public Page<T> queryPageByCondition(String hql, Map<String, Object> data, Page<T> page)
	{
		page.setCount(baseDao.querySizeByCondition(hql, data));
		page.setList(baseDao.queryPageByCondition(hql, data, page.getStartNum(), page.getPageSize()));
		return page;
	}

	public void update(T obj) {
		baseDao.update(obj);
	}
	
	public void merge(T obj) {
		baseDao.merge(obj);
	}
	
}
