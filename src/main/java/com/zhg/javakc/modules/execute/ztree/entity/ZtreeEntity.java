package com.zhg.javakc.modules.execute.ztree.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "TBAL_ZTREE")
public class ZtreeEntity {
	
	@Id
	@Column(name = "ZTREE_ID")
	@GeneratedValue(generator = "Assigned")
	@GenericGenerator(name = "Assigned", strategy = "assigned")
	private String id;
	
	@Column(name="ZTREE_PID")
	private String pid;

	@Column(name="ZTREE_NAME")
	private String name;

	@Column(name="ZTREE_OPEN")
	private String open;
	
	@Column(name="ZTREE_URL")
	private String type;
	
	
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getOpen() {
		return open;
	}

	public void setOpen(String open) {
		this.open = open;
	}
	

}
