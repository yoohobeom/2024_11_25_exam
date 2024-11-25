package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.demo.dto.Article;

@Mapper
public interface ArticleDao {

	
	@Select("""
			SELECT *
				FROM article;
			""")
	public List<Article> getAllArticles();
}

