package com.example.demo.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.dto.Article;
import com.example.demo.service.ArticleService;

@Controller
public class ArticleController {
	
	private ArticleService articleService;
	
	public ArticleController(ArticleService articleService) {
		this.articleService = articleService;
	}
	
	@GetMapping("/usr/article/list")
	public String list(Model model) {
		
		List<Article> articles = articleService.getAllArticles();
		
		model.addAttribute("articles", articles);
		
		return "usr/article/list";
	}
}