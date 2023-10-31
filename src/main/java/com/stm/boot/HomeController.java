package com.stm.boot;


import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	// http://localhost:8080/ 으로 접속 시
	/*
    @RequestMapping("/")
    public String welcome() {
        return "welcome";
    }
    */
	
	@RequestMapping(value = "/")
	public String home(Locale locale, Model model) {
		
		return "home";
	}
	
	@RequestMapping(value = "/error400")
	public String handle400() {
		
		return "error_page/error400";
	}
	
	@RequestMapping(value = "/error404")
	public String handle404() {
		
		return "error_page/error404";
	}
	
	@RequestMapping(value = "/error500")
	public String handle500() {
		
		return "error_page/error500";
	}
}
