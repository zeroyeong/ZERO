package com.zero.service;

import java.util.List;

import com.zero.domain.Branch;
import com.zero.domain.Reservation;

public interface BranchService {
	
	List<Branch> getList();
	
	public Branch getbranchInfo(String BRANCH_CODE);
	
	void newReservation(Reservation reservation);
	
	List<Reservation> timeList(int RE_STADIUM, int RE_BRANCH, String RE_DATE);

}
