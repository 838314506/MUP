package com.zhg.javakc.modules.system.menu.entity;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.zhg.javakc.base.entity.BaseEntity;
import com.zhg.javakc.modules.system.role.entity.RoleEntity;
import com.zhg.javakc.modules.system.user.entity.UserEntity;

/**
 * 基础菜单信息模块实体对象
 * @author zhou
 * @version 0.1
 */

@Entity
@Table(name="DATA_MENU")
public class MenuEntity extends BaseEntity<MenuEntity>{
	private String menuId;
	private String menuName;
	private String menuPid;
	private String menuLevel;
	private String menuUri;
	private String menuPermission;
	private int menuWeight;
	private int menuState;
	private Set<RoleEntity> roleMenuSet = new HashSet<RoleEntity>();
	
	@Id
	@Column(name = "MENU_ID")
	@GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid")
	public String getMenuId() {
		return menuId;
	}
	public void setMenuId(String menuId) {
		this.menuId = menuId;
	}
	
	@Column(name = "MENU_NAME")
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	
	@Column(name = "MENU_PID")
	public String getMenuPid() {
		return menuPid;
	}
	public void setMenuPid(String menuPid) {
		this.menuPid = menuPid;
	}
	
	@Column(name = "MENU_LEVEL")
	public String getMenuLevel() {
		return menuLevel;
	}
	public void setMenuLevel(String menuLevel) {
		this.menuLevel = menuLevel;
	}
	
	@Column(name = "MENU_URI")
	public String getMenuUri() {
		return menuUri;
	}
	public void setMenuUri(String menuUri) {
		this.menuUri = menuUri;
	}
	
	@Column(name = "MENU_PERMISSION")
	public String getMenuPermission() {
		return menuPermission;
	}
	public void setMenuPermission(String menuPermission) {
		this.menuPermission = menuPermission;
	}
	
	@Column(name = "MENU_WEIGHT")
	public int getMenuWeight() {
		return menuWeight;
	}
	public void setMenuWeight(int menuWeight) {
		this.menuWeight = menuWeight;
	}
	
	@Column(name = "MENU_STATE")
	public int getMenuState() {
		return menuState;
	}
	public void setMenuState(int menuState) {
		this.menuState = menuState;
	}
	
	@ManyToMany(targetEntity = RoleEntity.class, mappedBy = "menuSet", fetch=FetchType.EAGER)
	public Set<RoleEntity> getRoleMenuSet() {
		return roleMenuSet;
	}
	public void setRoleMenuSet(Set<RoleEntity> roleMenuSet) {
		this.roleMenuSet = roleMenuSet;
	}
	
}
