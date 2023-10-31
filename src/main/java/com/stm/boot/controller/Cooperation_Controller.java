package com.stm.boot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stm.boot.service.STM_Service;


@Controller
@RequestMapping("/cooperation")
public class Cooperation_Controller {
	
	@Autowired
	private STM_Service stmService;
	
	@RequestMapping(value = "/company")
	public String company() throws Exception {
		return "cooperation/company";
	}

}
