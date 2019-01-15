package com.zhg.javakc.base.service;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.zhg.javakc.base.page.Page;

public interface BaseService <T> {
	
	/**
	 * 添加数据方法
	 * @param obj 添加的对象
	 * @return 序列化ID
	 */
	public void create(T obj);
	
	/**
	 * 修改数据方法
	 * @param obj 修改的对象
	 * @return 序列化ID
	 */
	public void update(T obj);
	
	public void merge(T obj);
	
	/**
	 * 添加或添加数据方法
	 * @param obj 添加或修改的对象
	 */
	public void createOrupdate(T obj);
	
	/**
	 * 删除数据方法
	 * @param obj 删除的对象(对象要包含主键ID)
	 * @return 序列化ID
	 */
	public void delete(T obj);
	
	/**
	 * 批量删除数据方法
	 * @param cla 要删除的对象
	 * @param ids 主键ID数组
	 * @return 序列化ID
	 */
	public void delete(Class cls, String[] ids);
	
	/**
	 * 根据ID获取要查找的对象
	 * @param <T> 返回对象的类型
	 * @param cls 要查询的对象
	 * @param id 主键ID
	 * @return 查找的对象
	 */
	public <T>T load(Class<T> cls,Serializable id);
	
	/**
	 * 根据ID获取要查找的对象
	 * @param <T> 返回对象的类型
	 * @param cls 要查询的对象
	 * @param id 主键ID
	 * @return 查找的对象
	 */
	public <T>T get(Class<T> cls,Serializable id);
	
	/**
	 * 根据条件查询总条数
	 * @param hql 声明查询的hql语句  String hql = " select count(o) from Object o where o.name = :paremeter ";
	 * @param data 向map中传入占位符参数 data.put("parement", "姓名");
	 * @return 返回查询的总条数
	 */
	public long queryCountByCondition(String hql, Map<String, Object> data);
	
	/**
	 * 查询全部数据 
	 * @param hql 声明要查询的hql语句 String hql = " from Object o where o.name = :paremeter ";
	 * @return 返回匹配结果的数据
	 */
	public List<T> queryAll(String hql);
	
	/**
	 * 根据条件查询 
	 * @param hql 声明要查询的hql语句 String hql = " from Object o where o.name = :paremeter ";
	 * @param data 向map中传入占位符参数 data.put("parement", "姓名");
	 * @return 返回匹配结果的数据
	 */
	public List<T> queryByCondition(String hql, Map<String,Object> data);
	
	/**
	 * 根据条件分页查询 
	 * @param hql 声明要查询的hql语句 String hql = " from Object o where o.name = :paremeter ";
	 * @param data 向map中传入占位符参数 data.put("parement", "姓名");
	 * @param startNum 开始条数
	 * @param pageNum 每页查询条数
	 * @return 返回匹配结果的数据
	 */
	public List<T> queryPageByCondition(String hql, Map<String,Object> data, int page, int rows);
	
	public Page<T> queryPageByCondition(String hql, Map<String, Object> data, Page<T> page);
}
