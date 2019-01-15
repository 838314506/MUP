package com.zhg.javakc.modules.system.user.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.zhg.javakc.base.dao.impl.BaseDaoImpl;
import com.zhg.javakc.modules.system.user.dao.UserDao;
import com.zhg.javakc.modules.system.user.entity.UserEntity;

/**
 * 基础用户信息模块数据层实现
 * @author zhou
 * @version 0.1
 */
@Repository
public class UserDaoImpl extends BaseDaoImpl<UserEntity> implements UserDao {

	@Override
	public int insert(UserEntity entity) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void insertRelation(Map<String, Object> data) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteRelation(String userId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String login(String loginName) {
		StringBuffer sb = new StringBuffer("select u.loginPass as pass from UserEntity u where u.loginName = :loginName");
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("loginName", loginName);
		List<UserEntity> list = getCurrentSession().createQuery(sb.toString()).setProperties(data).list();
		if(null != list){
			return list.get(0).getLoginPass();
		}
		return null;
	}

	@Override
	public UserEntity findByName(String loginName) {
		StringBuffer sb = new StringBuffer("SELECT U FROM UserEntity U WHERE 1=1 AND U.loginName = :loginName");
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("loginName", loginName);
		List<UserEntity> list = getCurrentSession().createQuery(sb.toString()).setProperties(data).list();
		if(null != list){
			return list.get(0);
		}
		return null;
	}
	
	
	
}
