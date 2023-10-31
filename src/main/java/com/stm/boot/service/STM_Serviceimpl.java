package com.stm.boot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service(value = "stmService")
public class STM_Serviceimpl implements STM_Service{
	//private TestMapper testMapper;
	
	//@Autowired
	//public STM_Serviceimpl(TestMapper testMapper) {
	//	this.testMapper = testMapper;
	//}
	
	@Override
	public String getUser() {
		String name = "";//testMapper.getUser();
		return name;
	}

}
