package com.stm.boot.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.stm.boot.service.STM_Service;


@Controller
@RequestMapping("/customer_service")
public class Customer_Service_Controller {
	
	@Autowired
	private STM_Service stmService;
	
	@RequestMapping(value = "/notice")
	public ModelAndView notice(@RequestParam HashMap<Object, Object> params, ModelAndView mv) {
		mv.setViewName("customer_service/notice");
		return mv;
	}
	
	@RequestMapping(value = "/faq")
	public String faq() throws Exception {
		return "customer_service/faq";
	}
	@RequestMapping(value = "/inquire")
	public String questions() throws Exception {
		return "customer_service/inquire";
	}


}
