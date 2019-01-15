package com.zhg.javakc.modules.dictionary.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.zhg.javakc.base.entity.BaseEntity;

/**
 * 数据字典模块实体类
 * @author zhou
 * @version 0.1
 */

@Entity
@Table(name="DATA_DICTIONARY")
public class DictionaryEntity extends BaseEntity<DictionaryEntity>{
	private String dataId;
	private String dataName;
	private String dataType;
	private String dataCode;
	private String dataVal;
	private String dataCommon;
	
	@Id
	@Column(name = "DATA_ID")
	@GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid")
	public String getDataId() {
		return dataId;
	}
	public void setDataId(String dataId) {
		this.dataId = dataId;
	}
	
	@Column(name = "DATA_NAME")
	public String getDataName() {
		return dataName;
	}
	public void setDataName(String dataName) {
		this.dataName = dataName;
	}
	
	@Column(name = "DATA_TYPE")
	public String getDataType() {
		return dataType;
	}
	public void setDataType(String dataType) {
		this.dataType = dataType;
	}
	
	@Column(name = "DATA_CODE")
	public String getDataCode() {
		return dataCode;
	}
	public void setDataCode(String dataCode) {
		this.dataCode = dataCode;
	}
	
	@Column(name = "DATA_VAL")
	public String getDataVal() {
		return dataVal;
	}
	public void setDataVal(String dataVal) {
		this.dataVal = dataVal;
	}
	
	@Column(name = "DATA_COMMON")
	public String getDataCommon() {
		return dataCommon;
	}
	public void setDataCommon(String dataCommon) {
		this.dataCommon = dataCommon;
	}
}
