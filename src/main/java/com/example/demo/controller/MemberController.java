package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.dto.Member;
import com.example.demo.dto.Request;
import com.example.demo.service.MemberService;
import com.example.demo.util.Util;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class MemberController {
	
	private MemberService memberService;
	
	public MemberController(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@GetMapping("/usr/member/join")
	public String join() {
		return "usr/member/join";
	}
	
	@PostMapping("/usr/member/doJoin")
	@ResponseBody
	public String doJoin(String email, String loginPw, String name) {
		memberService.joinMember(email, loginPw, name);
		
		return Util.jsUri("가입을 성공했습니다", "login");
	}
	
	@GetMapping("/usr/member/login")
	public String login() {
		return "usr/member/login";
	}
	
	@PostMapping("/usr/member/doLogin")
	@ResponseBody
	public String doLogin(HttpServletRequest req, String email, String loginPw) {
		
		Request request= (Request) req.getAttribute("rq");

		Member member = memberService.getMemberByEmail(email);
		
		if (member == null) {
			return Util.jsUri(String.format("[ %s ] 은(는) 존재하지 않는 아이디입니다", email), null);
		}
		
		if (member.getLoginPw().equals(loginPw) == false) {
			return Util.jsUri("비밀번호를 확인해주세요", null);
		}
		
		request.login(member.getId());
		
		return Util.jsUri(String.format("%s님 환영합니다~", member.getName()), "/");
	}
}
