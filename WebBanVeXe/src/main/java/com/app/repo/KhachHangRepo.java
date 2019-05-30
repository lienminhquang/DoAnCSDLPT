package com.app.repo;

import org.springframework.data.repository.CrudRepository;


import com.app.model.KhachHang;

public interface KhachHangRepo extends CrudRepository<KhachHang, Integer>{
	
	  public abstract java.util.Optional<KhachHang> findByUsernameAndPassword(java.lang.Object arg0, java.lang.Object arg1);
}
