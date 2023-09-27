package com.zero.service;

import com.zero.domain.Member;

public interface JoinService {
	void addMember(Member member);
	int checkId(String mem_id);
}
