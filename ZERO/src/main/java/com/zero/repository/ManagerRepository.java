package com.zero.repository;

import com.zero.domain.Member;

public interface ManagerRepository {
	
	void cancleReservation(int re_no);

	void updateMgrMember(Member member);
}
  