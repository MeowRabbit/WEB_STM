package com.stm.boot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stm.boot.service.Airble_Service;

@Controller
public class Airble_Controller {
	
	@Autowired
	Airble_Service service;
	
	@RequestMapping(value = "/airble")
	public String airble() throws Exception {
		return "airble/airble_test";
	}

}
