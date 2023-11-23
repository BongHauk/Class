package com.spring.utility.tiles;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/tiles/board")
public class BoardController_answer {

	@GetMapping("/boardList")
	public String boardList() {
		return "L";	
	}
	
	@GetMapping("/boardWrite")
	public String boardWrite() {
		return "W";
	}
	
	@GetMapping("/boardUpdate")
	public ModelAndView boardUpdate() {
		return new ModelAndView("U");
	}
	
	@GetMapping("/boardDelete")
	public ModelAndView boardDelete() {
		return new ModelAndView("D");
	}
	
}
