package com.spring.utility.tiles;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/tiles/bootstrap")
public class BootstrapController {

	@GetMapping("/index")
	public String index() {
		return "/bootstrap/index";
	}
	
	@GetMapping("/blog")
	public ModelAndView blog() {
		return new ModelAndView("/bootstrap/blog");
	}
	
	@GetMapping("/shop")
	public ModelAndView shop() {
		return new ModelAndView("/bootstrap/shop");
	}
	
	@GetMapping("/contact")
	public ModelAndView contact() {
		return new ModelAndView("/bootstrap/contact");
	}
	
	@GetMapping("/product")
	public ModelAndView product() {
		return new ModelAndView("/bootstrap/product");
	}
	
	@GetMapping("/checkout")
	public ModelAndView checkout() {
		return new ModelAndView("/bootstrap/checkout");
	}
	
	@GetMapping("/cart")
	public ModelAndView cart() {
		return new ModelAndView("/bootstrap/cart");
	}
	
	
}
