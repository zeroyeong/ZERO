package com.zero.repository;

import com.zero.domain.Member;

public interface MemberRepository {
	/*______ȸ������______*/
	void addMember(Member member);
	int checkId(String mem_id);
	
	
	/*______�α���______*/
	Member loginMember(String mem_id);
}
