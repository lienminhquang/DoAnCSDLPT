package com.app.repo;

import org.springframework.data.repository.CrudRepository;

import com.app.model.NhanVien;

public interface NhanVienRepo extends CrudRepository<NhanVien, Integer>{

	public abstract java.util.Optional<NhanVien> findByUsernameAndPasswordAndChucVu(java.lang.Object arg0, java.lang.Object arg1, java.lang.Object arg3);
	public abstract Iterable<NhanVien> findByChucVu(java.lang.Object arg0);
}
