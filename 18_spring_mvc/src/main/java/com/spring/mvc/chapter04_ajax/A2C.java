package com.spring.mvc.chapter04_ajax;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.spring.mvc.dto.ProductDTO;

@Controller
@RequestMapping("/ajax")
public class A2C {
	
	/*
	 * 
	    # AJAX데이터 전송
	    
	    - pom.xml파일에 의존성 추가
	    
		<!-- jackson-core -->
		<dependency>
		    <groupId>com.fasterxml.jackson.core</groupId>
		    <artifactId>jackson-databind</artifactId>
		    <version>2.9.2</version>
		</dependency>
		
	*/
	
	@GetMapping("/a2c")
	public String ajaxToController() {
		return "chapter04_AJAX/a2c";
	}
	
	
	
	// 1. 단일 데이터 전송
	@GetMapping("/a2cEx01")
	public void a2cEx01(@RequestParam("productCd") String productCd) {
		System.out.println(productCd);
		System.out.println();
	}
	
	
	
	// 2. DTO 전송
	@GetMapping("/a2cEx02")
	public void a2cEx02(@ModelAttribute ProductDTO productDTO)  {
		System.out.println(productDTO);
		System.out.println();
	}

	
	
	// 3. List<DTO> 전송
	@GetMapping("/a2cEx03")
	public void a2cEx03(@RequestParam("productList") String productList) throws JsonParseException, JsonMappingException, IOException {
		
		//1) ObjectMapper 객체를 생성한다.
		ObjectMapper mapper = new ObjectMapper();
		
		//2) readValue(데이타 , new TypeReference<타입>(){}) 메서드를 사용하여 JSON 객체를 자바의 객체로 매핑한다.
		List<ProductDTO> temp =  mapper.readValue(productList, new TypeReference<ArrayList<ProductDTO>>(){});
		for (ProductDTO productDTO : temp) {
			System.out.println(productDTO);
		}
		System.out.println();
	}
	
	
	
	// 4. map 전송
	@GetMapping("/a2cEx04")
	public void a2cEx04(@RequestParam Map<String,Object> map) {
		System.out.println(map);
		System.out.println();
	}
	
	

	// 5. List<Map> 전송
	@GetMapping("/a2cEx05")
	public void a2cEx05(@RequestParam("mapList") String mapList) throws JsonParseException, JsonMappingException, IOException {
	
		//1) ObjectMapper 객체를 생성한다.
		ObjectMapper mapper = new ObjectMapper();
		//2) readValue(데이타 , new TypeReference<타입>(){}) 메서드를 사용하여 JSON 객체를 자바의 객체로 매핑한다.
		List<Map<String,Object>> temp = mapper.readValue(mapList, new TypeReference<ArrayList<Map<String,Object>>>() {});
		for (Map<String, Object> map : temp) {
			System.out.println(map);
		}
		System.out.println();
	}
	
}
