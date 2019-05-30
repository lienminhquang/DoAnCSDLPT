package com.app.repo;

import org.springframework.data.repository.CrudRepository;

import com.app.model.VeXe;

public interface VeXeRepo extends CrudRepository<VeXe, Integer>{
	 public abstract Iterable<VeXe> findByChuyenXeAndTrangthai(java.lang.Object arg0, java.lang.Object arg1);
	 
	 
}
