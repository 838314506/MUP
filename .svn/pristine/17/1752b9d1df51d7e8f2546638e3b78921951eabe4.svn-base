package com.zhg.javakc.base.dao.impl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;


import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zhg.javakc.base.dao.BaseDao;

@Repository(value="baseDao")
public class BaseDaoImpl<T> implements BaseDao<T> {

	@Autowired
	private SessionFactory sessionFactory;

	protected final Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	public void create(T obj) {
		getCurrentSession().save(obj);
	}

	public void update(T obj) {
		getCurrentSession().update(obj);
	}
	
	public void merge(T obj) {
		getCurrentSession().merge(obj);
	}

	public void createOrupdate(T obj) {
		getCurrentSession().saveOrUpdate(obj);
	}

	public void delete(T obj) {
		getCurrentSession().delete(obj);
	}

	public void execute(final String hql) {
		getCurrentSession().createQuery(hql).executeUpdate();
	}

	public <T> T get(Class<T> cls, Serializable id) {
		return (T) getCurrentSession().get(cls, id);
	}

	public <T> T load(Class<T> cls, Serializable id) {
		return (T) getCurrentSession().load(cls, id);
	}

	public List<T> queryAll(String hql) {
		return getCurrentSession().createQuery(hql).list();
	}

	public List<T> queryByCondition(final String hql, final Map<String, Object> data) {
		Query query = getCurrentSession().createQuery(hql).setProperties(data);
		return query.getResultList();
	}

	public long queryCountByCondition(final String hql, final Map<String, Object> data) {
		Query query = getCurrentSession().createQuery(hql).setProperties(data);
		return (Long) query.uniqueResult();
	}
	
	public long querySizeByCondition(final String hql, final Map<String, Object> data) {
		Query query = getCurrentSession().createQuery(hql).setProperties(data);
		if(null != query.list()){
			return query.list().size();
		}
		return 0;
	}

	public List<T> queryPageByCondition(final String hql, final Map<String, Object> data, final int startNum, final int pageNum) {
		Query query = getCurrentSession().createQuery(hql).setProperties(data).setFirstResult(startNum).setMaxResults(pageNum);
		return query.list();
	}

}
