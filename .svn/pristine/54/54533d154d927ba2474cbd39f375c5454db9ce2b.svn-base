package com.zhg.javakc.modules.dictionary.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.impl.BaseServiceImpl;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.dictionary.dao.DictionaryDao;
import com.zhg.javakc.modules.dictionary.entity.DictionaryEntity;
import com.zhg.javakc.modules.dictionary.service.DictionaryService;

/**
 * 数据字典模块逻辑层实现
 * @author zhou
 * @version 0.1
 */

@Service("dictionaryService")
public class DictionaryServiceImpl extends BaseServiceImpl<DictionaryEntity> implements DictionaryService {
	
	@Autowired
	private DictionaryDao dictionaryDao;
	
	public Page<DictionaryEntity> findDictionary(Page<DictionaryEntity> page, DictionaryEntity entity) {
		// 设置分页参数
		entity.setPage(page);
		// 执行分页查询
//		page.setList(dictionaryDao.findList(entity));
		return page;
	}
	
	public void create(DictionaryEntity entity, String[] code, String[] val)
	{
		for(int i=0;i<code.length;i++)
		{
			DictionaryEntity dictionaryEntity = new DictionaryEntity();
			dictionaryEntity.setDataName(entity.getDataName());
			dictionaryEntity.setDataType(entity.getDataType());
			dictionaryEntity.setDataCode(code[i]);
			dictionaryEntity.setDataVal(val[i]);
			dictionaryDao.create(dictionaryEntity);
		}
	}
	
}
