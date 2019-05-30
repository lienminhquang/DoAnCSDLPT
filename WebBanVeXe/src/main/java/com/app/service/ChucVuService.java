package com.app.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.model.ChucVu;
import com.app.repo.ChucVuRepo;

@Service
public class ChucVuService {
	@Autowired
	private ChucVuRepo chucVuRepo;
	
	public ArrayList<ChucVu> getAll(){
		return (ArrayList<ChucVu>) chucVuRepo.findAll();
	}
	
	public ChucVu getById(Integer id) {
		return chucVuRepo.findById(id).get();
	}
}
