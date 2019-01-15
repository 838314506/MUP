package com.zhg.javakc.modules.system.menu.dao.impl;

import java.util.List;
import java.util.Map;

import org.hibernate.transform.Transformers;
import org.springframework.stereotype.Repository;

import com.zhg.javakc.base.dao.impl.BaseDaoImpl;
import com.zhg.javakc.modules.system.menu.dao.MenuDao;
import com.zhg.javakc.modules.system.menu.entity.MenuEntity;

@Repository
public class MenuDaoImpl extends BaseDaoImpl<MenuEntity> implements MenuDao {

	@Override
	public List<Map<String, Object>> findAll(String sql) {
		return getCurrentSession().createSQLQuery(sql).setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
	}

}
