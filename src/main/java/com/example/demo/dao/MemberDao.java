package com.example.demo.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.demo.dto.Member;

@Mapper
public interface MemberDao {

	
	@Insert("""
			INSERT INTO `member`
				SET regDate = NOW()
					, updateDate = NOW()
					, `name` = #{name}
					, email = #{email}
					, loginPw = #{loginPw}
			""")
	public void joinMember(String name, String email, String loginPw);

	@Select("""
			SELECT *
				FROM `member`
				WHERE email = #{email}
			""")
	public Member getMemberByEmail(String email);
}
