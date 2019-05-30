package com.app.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity(name = "chuyenxe")
public class ChuyenXe {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;
	
	
//	@Column(name = "id_taixe")
//	private Integer id_taixe;
	@ManyToOne
	@JoinColumn(name = "id_taixe")
	private NhanVien taiXe;
	
//	@Column(name = "id_xe")
//	private Integer id_xe;
	
	@ManyToOne
	@JoinColumn(name = "id_xe")
	private Xe xe;
	
	@Column(name = "diemxuatphat")
	private String diemXuatPhat;
	
	@Column(name = "diemden")
	private String diemDen;
	
	@Column(name = "thoigiandi")
	private Date thoiGianDi;
	
	@Column(name = "thoigianden")
	private Date thoiGianDen;
	
	@Column(name = "giave")
	private Integer giave;

	private Integer soGheTrong;
	

	public ChuyenXe() {
		super();
	}


	public ChuyenXe(Integer id, NhanVien taiXe, Xe xe, String diemXuatPhat, String diemDen, Date thoiGianDi,
			Date thoiGianDen, Integer giave, Integer soGheTrong) {
		super();
		this.id = id;
		this.taiXe = taiXe;
		this.xe = xe;
		this.diemXuatPhat = diemXuatPhat;
		this.diemDen = diemDen;
		this.thoiGianDi = thoiGianDi;
		this.thoiGianDen = thoiGianDen;
		this.giave = giave;
		this.soGheTrong = soGheTrong;
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public NhanVien getTaiXe() {
		return taiXe;
	}


	public void setTaiXe(NhanVien taiXe) {
		this.taiXe = taiXe;
	}


	public Xe getXe() {
		return xe;
	}


	public void setXe(Xe xe) {
		this.xe = xe;
	}


	public String getDiemXuatPhat() {
		return diemXuatPhat;
	}


	public void setDiemXuatPhat(String diemXuatPhat) {
		this.diemXuatPhat = diemXuatPhat;
	}


	public String getDiemDen() {
		return diemDen;
	}


	public void setDiemDen(String diemDen) {
		this.diemDen = diemDen;
	}


	public Date getThoiGianDi() {
		return thoiGianDi;
	}


	public void setThoiGianDi(Date thoiGianDi) {
		this.thoiGianDi = thoiGianDi;
	}


	public Date getThoiGianDen() {
		return thoiGianDen;
	}


	public void setThoiGianDen(Date thoiGianDen) {
		this.thoiGianDen = thoiGianDen;
	}


	public Integer getGiave() {
		return giave;
	}


	public void setGiave(Integer giave) {
		this.giave = giave;
	}


	public Integer getSoGheTrong() {
		return soGheTrong;
	}


	public void setSoGheTrong(Integer soGheTrong) {
		this.soGheTrong = soGheTrong;
	}

	
	
}
