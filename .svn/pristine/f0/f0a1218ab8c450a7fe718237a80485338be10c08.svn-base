package com.zhg.javakc.modules.system.role.entity;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.zhg.javakc.base.entity.BaseEntity;
import com.zhg.javakc.modules.system.menu.entity.MenuEntity;
import com.zhg.javakc.modules.system.user.entity.UserEntity;

/**
 * 基础信息角色对象
 * @author zhg
 * @version 0.1
 */

@Entity
@Table(name="DATA_ROLE")
public class RoleEntity extends BaseEntity<RoleEntity>{
	private String roleId;
	private String roleName;
	private String roleRemark;
	private Set<MenuEntity> menuSet = new HashSet<MenuEntity>();
	
	@Id
	@Column(name = "ROLE_ID")
	@GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid")
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	
	@Column(name = "ROLE_NAME")
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	
	@Column(name = "ROLE_REMARK")
	public String getRoleRemark() {
		return roleRemark;
	}
	public void setRoleRemark(String roleRemark) {
		this.roleRemark = roleRemark;
	}
	
	@ManyToMany(targetEntity = MenuEntity.class, fetch=FetchType.EAGER)
	@JoinTable(name="DATA_ROLE_MENU", 
				joinColumns=@JoinColumn(name="ROLE_ID"), 
				inverseJoinColumns=@JoinColumn(name="MENU_ID")
	)
	public Set<MenuEntity> getMenuSet() {
		return menuSet;
	}
	public void setMenuSet(Set<MenuEntity> menuSet) {
		this.menuSet = menuSet;
	}
	
	
}
