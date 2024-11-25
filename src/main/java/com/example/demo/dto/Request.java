package com.example.demo.dto;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.Getter;

public class Request {
	
	@Getter
	private int loginedMemberId;
	
	private HttpSession session;
	
	public Request(HttpServletRequest req) {
		this.session = req.getSession();
		
		int loginedMemberId = -1;
		
		if (this.session.getAttribute("loginedMemberId") != null) {
			loginedMemberId = (int) this.session.getAttribute("loginedMemberId");
		}
		
		this.loginedMemberId = loginedMemberId;
	}

	public void login(int loginedMemberId) {
		this.session.setAttribute("loginedMemberId", loginedMemberId);
	}

	public void logout() {
		this.session.removeAttribute("loginedMemberId");
	}
}
