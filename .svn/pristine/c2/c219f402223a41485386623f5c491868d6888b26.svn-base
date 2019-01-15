package com.zhg.javakc.base.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * 增读改删数据层接口
 * @author zhou
 * @version 0.1
 */
public interface BaseDao<T> {
	
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
	 * 根据传入的hql语句执行操作
	 * @param hql
	 */
	public void execute(String hql);
	
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
	 * 根据条件查询总条数
	 * @param hql 声明查询的hql语句  String hql = " select count(o) from Object o where o.name = :paremeter ";
	 * @param data 向map中传入占位符参数 data.put("parement", "姓名");
	 * @return 返回查询的总条数
	 */
	public long querySizeByCondition(String hql, Map<String, Object> data);
	
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
	public List<T> queryPageByCondition(String hql, Map<String,Object> data, int startNum, int pageNum);
	
}
