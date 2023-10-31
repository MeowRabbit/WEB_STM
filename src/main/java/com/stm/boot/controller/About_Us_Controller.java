package com.stm.boot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stm.boot.service.STM_Service;



@Controller
@RequestMapping("/about_us")
public class About_Us_Controller {
	
	@Autowired
	private STM_Service stmService;
	
	@RequestMapping(value = "/greeting")
	public String about() throws Exception {
		return "about_us/greeting";
	}

	@RequestMapping(value = "/overview")
	public String organization() throws Exception {
		return "about_us/overview";
	}
	
	@RequestMapping(value = "/history")
	public String history() throws Exception {
		return "about_us/history";
	}
	
	@RequestMapping(value = "/license")
	public String license() throws Exception {
		return "about_us/license";
	}
	
	@RequestMapping(value = "/location")
	public String location() throws Exception {
		return "about_us/location";
	}


}
