package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("usr/home/main")
	public String main() {
		return "usr/home/main";
	}
	
	@GetMapping("/")
	public String goMain() {
		return "redirect:/usr/home/main";
	}
}
