package com.stm.boot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.stm.boot.service.STM_Service;


@Controller
@RequestMapping("/product")
public class Product_Controller {
	
	@Autowired
	private STM_Service stmService;
	
	@RequestMapping(value = "/ems")
	public String ems() throws Exception {
		return "product/ems";
	}
	
	@RequestMapping(value = "/ems_item")
	public String ems_item(@RequestParam(value = "item_code") String item_code, Model model) throws Exception {
		model.addAttribute("item_code", item_code);
		return "product/ems_item";
	}
	
	@RequestMapping(value = "/floor_light")
	public String floor_light() throws Exception {
		return "product/floor_light";
	}
	
	@RequestMapping(value = "/traffic_light")
	public String traffic_light() throws Exception {
		return "product/traffic_light";
	}
	
	@RequestMapping(value = "/road_stud")
	public String traffic() throws Exception {
		return "product/road_stud";
	}
	
	@RequestMapping(value = "/traffic_item")
	public String traffic_item(@RequestParam(value = "item_code") String item_code, Model model) throws Exception {
		model.addAttribute("item_code", item_code);
		return "product/traffic_item";
	}


}
