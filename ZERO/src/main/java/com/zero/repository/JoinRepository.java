package com.zero.repository;

import com.zero.domain.Member;

public interface JoinRepository {
	void addMember(Member member);
	void checkId(String mem_id);
}
