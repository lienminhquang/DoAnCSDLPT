package com.app.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.model.ChuyenXe;
import com.app.repo.ChuyenXeRepo;

@Service
public class ChuyenXeSer {

	@Autowired
	private ChuyenXeRepo chuyenXeRepo;
	
	public ArrayList<ChuyenXe> getAll(){
		return (ArrayList<ChuyenXe>) chuyenXeRepo.findAll();
	}
	
	public ChuyenXe findById(Integer id){
		return chuyenXeRepo.findById(id).get();
	}
	
	public ChuyenXe save(ChuyenXe cx) {
		return chuyenXeRepo.save(cx);
	}
}
