package com.zhg.javakc.modules.manage.coal.entity;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.zhg.javakc.base.entity.BaseEntity;
import com.zhg.javakc.modules.execute.mine.entity.MineEntity;
@Entity
@Table(name = "manager_colliery")
public class ManageEntity extends BaseEntity<ManageEntity> {
	@Id
	@Column(name = "colliery_id")
	@GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid")
	private String mId;
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getmNumber() {
		return mNumber;
	}
	public void setmNumber(String mNumber) {
		this.mNumber = mNumber;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getmLogogram() {
		return mLogogram;
	}
	public void setmLogogram(String mLogogram) {
		this.mLogogram = mLogogram;
	}
	public String getmPinyin() {
		return mPinyin;
	}
	public void setmPinyin(String mPinyin) {
		this.mPinyin = mPinyin;
	}
	public String getmAddress() {
		return mAddress;
	}
	public void setmAddress(String mAddress) {
		this.mAddress = mAddress;
	}
	public String getmContact() {
		return mContact;
	}
	public void setmContact(String mContact) {
		this.mContact = mContact;
	}
	public String getmPhone() {
		return mPhone;
	}
	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}
	public String getmFaren() {
		return mFaren;
	}
	public void setmFaren(String mFaren) {
		this.mFaren = mFaren;
	}
	public String getRegAddress() {
		return regAddress;
	}
	public void setRegAddress(String regAddress) {
		this.regAddress = regAddress;
	}
	public BigDecimal getAbility() {
		return ability;
	}
	public void setAbility(BigDecimal ability) {
		this.ability = ability;
	}
	public BigDecimal getArea() {
		return area;
	}
	public void setArea(BigDecimal area) {
		this.area = area;
	}
	public String getPossessionReserve() {
		return possessionReserve;
	}
	public void setPossessionReserve(String possessionReserve) {
		this.possessionReserve = possessionReserve;
	}
	
	public BigDecimal getDetectReserve() {
		return detectReserve;
	}
	public void setDetectReserve(BigDecimal detectReserve) {
		this.detectReserve = detectReserve;
	}
	public Integer getOpenUp() {
		return openUp;
	}
	public void setOpenUp(Integer openUp) {
		this.openUp = openUp;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Set<MineEntity> getManges() {
		return manges;
	}
	public void setManges(Set<MineEntity> manges) {
		this.manges = manges;
	}
	@Column(name = "colliery_number")
	private String mNumber;// 编号
	@Column(name = "colliery_name")
	private String mName;// 名称
	@Column(name = "colliery_logogram")
	private String mLogogram;// 简称
	@Column(name = "colliery_pinyin")
	private String mPinyin;// 简拼

	@Column(name = "colliery_address")
	private String mAddress;// 地域
	@Column(name = "colliery_contact")
	private String mContact;// 联系人
	@Column(name = "colliery_phone")
	private String mPhone;// 电话
	@Column(name = "colliery_faren")
	private String mFaren;// 法人
	@Column(name = "colliery_reg_address")
	private String regAddress;// 注册地址
	@Column(name = "colliery_ability")
	private BigDecimal ability;// 整合能力
	@Column(name = "colliery_area")
	private BigDecimal area;// 井田面积
	@Column(name = "colliery_possession_reserve")
	private String possessionReserve;// 保有储量
	@Column(name = "colliery_detect_reserve")
	private BigDecimal detectReserve;// 探明储量
	@Column(name = "colliery_open_up")
	private Integer openUp;// 开拓方式

	@Column(name = "colliery_remarks")
	private String remarks;// 备注
	@Column(name = "colliery_status")
	private Integer status;// 状态
	@OneToMany(mappedBy = "manageEntity")
	private Set<MineEntity> manges = new HashSet<MineEntity>();

}
