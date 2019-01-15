package com.zhg.javakc.modules.system.role.dao.impl;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.zhg.javakc.base.dao.impl.BaseDaoImpl;
import com.zhg.javakc.modules.system.role.dao.RoleDao;
import com.zhg.javakc.modules.system.role.entity.RoleEntity;

@Repository
public class RoleDaoImpl extends BaseDaoImpl<RoleEntity> implements RoleDao {

	@Override
	public int insert(RoleEntity entity) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void insertRelation(Map<String, Object> data) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteRelation(String roleId) {
		// TODO Auto-generated method stub
		
	}

}
