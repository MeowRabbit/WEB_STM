package com.stm.boot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stm.boot.service.STM_Service;


@Controller
@RequestMapping("/achievement")
public class Achievement_Controller {
	
	@Autowired
	private STM_Service stmService;
	
	@RequestMapping(value = "/performance")
	public String performance() throws Exception {
		return "achievement/performance";
	}
	
	@RequestMapping(value = "/installation")
	public String installation() throws Exception {
		return "achievement/installation";
	}

}
