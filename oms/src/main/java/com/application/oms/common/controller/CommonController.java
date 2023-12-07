package com.application.oms.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/yeni")
public class CommonController {

	@GetMapping("/main")
	public ModelAndView main() {
		return new ModelAndView("/common/main"); 
	}
	
	
}
