package com.zero.service;

import com.zero.domain.Member;

public interface JoinService {
	void addMember(Member member);
	void checkId(String mem_id);
}
