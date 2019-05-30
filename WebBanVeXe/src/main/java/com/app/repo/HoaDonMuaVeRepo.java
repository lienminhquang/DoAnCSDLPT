package com.app.repo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.app.model.HoaDonMuaVe;


@Repository
public interface HoaDonMuaVeRepo extends CrudRepository<HoaDonMuaVe, Integer>{

	 public abstract Iterable<HoaDonMuaVe> findByKhachhang(java.lang.Object arg0);
}
