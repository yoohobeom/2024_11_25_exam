package com.example.demo.service;

import org.springframework.stereotype.Service;

import com.example.demo.dao.MemberDao;
import com.example.demo.dto.Member;

@Service
public class MemberService {

	private MemberDao memberDao;
	
	public MemberService(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	public void joinMember(String name, String email, String loginPw) {
		memberDao.joinMember(name, email, loginPw);
	}

	public Member getMemberByEmail(String email) {
		return memberDao.getMemberByEmail(email);
	}
	
	
	
}
