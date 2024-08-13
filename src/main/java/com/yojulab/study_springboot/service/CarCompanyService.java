package com.yojulab.study_springboot.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yojulab.study_springboot.dao.SharedDao;

@Service
public class CarCompanyService {

	SharedDao sharedDao;

	public CarCompanyService(@Autowired SharedDao sharedDao) {
		this.sharedDao = sharedDao;
	}


	public Map findAll() {
		// Object getOne(String sqlMapId, Object dataMap)
		String sqlMapId = "CarInfors.findAll";

		HashMap result = new HashMap<>();
		result.put("resultList", sharedDao.findAll(sqlMapId));
		return result;
	}

}
