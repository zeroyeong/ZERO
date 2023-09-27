package com.zero.repository;

import com.zero.domain.Member;

public interface MemberRepository {
	/*______회원가입______*/
	void addMember(Member member);
	int checkId(String mem_id);
	
	
	/*______로그인______*/
	Member loginMember(String mem_id);
}
