package com.spring.utility.tiles;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TilesController {

	@GetMapping("/content1")
	public String content1() {
		//return "tiles/tilesEx/content1"; //(before) > jsp로 포워딩
		return "a"; //(after) > tiles설정파일로 포워딩 > 조립된jsp로 포워딩
	}
	
	@GetMapping("/content2")
	public ModelAndView content2() {
		ModelAndView mv = new ModelAndView();
		// mv.setViewName("tiles/tilesEx/content2"); //(before) > jsp로 포워딩
		mv.setViewName("b");
		return mv; 
	}
	
	@GetMapping("/content3")
	public ModelAndView content3() {
		return new ModelAndView("c"); 
	}
	
	
	
}
