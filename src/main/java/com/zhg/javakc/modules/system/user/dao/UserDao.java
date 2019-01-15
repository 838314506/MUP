package com.zhg.javakc.modules.system.user.dao;

import java.util.Map;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.system.user.entity.UserEntity;

public interface UserDao extends BaseDao<UserEntity>{

	public int insert(UserEntity entity);
	
	public void insertRelation(Map<String, Object> data);
	
	public void deleteRelation(String userId);
	
	public String login(String loginName);
	
	public UserEntity findByName(String loginName);
	
	
}
