package com.zero.repository;

import com.zero.domain.Member;

public interface JoinRepository {
	void addMember(Member member);
	int checkId(String mem_id);
}
