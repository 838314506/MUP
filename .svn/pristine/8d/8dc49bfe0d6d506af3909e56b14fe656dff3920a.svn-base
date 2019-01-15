package com.zhg.javakc.modules.system.user.entity;

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
import com.zhg.javakc.modules.system.role.entity.RoleEntity;

/**
 * 基础用户信息模块实体类
 * @author zhou
 * @version 0.1
 */

@Entity
@Table(name="DATA_USER")
public class UserEntity extends BaseEntity<UserEntity>{
	private String userId;
	private String userName;
	private String loginName;
	private String loginPass;
	private String userEmail;
	private String userPhone;
	private int userSex;
	private Set<RoleEntity> roleSet = new HashSet<RoleEntity>();
	
	@Id
	@Column(name = "USER_ID")
	@GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid")
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	@Column(name = "USER_NAME")
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	@Column(name = "LOGIN_NAME")
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	
	@Column(name = "LOGIN_PASS")
	public String getLoginPass() {
		return loginPass;
	}
	public void setLoginPass(String loginPass) {
		this.loginPass = loginPass;
	}
	
	@Column(name = "USER_EMAIL")
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	@Column(name = "USER_PHONE")
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	
	@Column(name = "USER_SEX")
	public int getUserSex() {
		return userSex;
	}
	public void setUserSex(int userSex) {
		this.userSex = userSex;
	}
	
	@ManyToMany(targetEntity = RoleEntity.class, fetch=FetchType.EAGER)
	@JoinTable(name="DATA_USER_ROLE", 
				joinColumns=@JoinColumn(name="USER_ID"), 
				inverseJoinColumns=@JoinColumn(name="ROLE_ID")
	)
	public Set<RoleEntity> getRoleSet() {
		return roleSet;
	}
	public void setRoleSet(Set<RoleEntity> roleSet) {
		this.roleSet = roleSet;
	}
	
}
