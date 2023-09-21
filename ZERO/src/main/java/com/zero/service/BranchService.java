package com.zero.service;

import java.util.List;

import com.zero.domain.Branch;

public interface BranchService {
	
	List<Branch> getList();
	
	public Branch getbranchInfo(String BRANCH_CODE);
	
	void reservationBranch(Branch branch);
	
	List<Branch> timeList(int RE_STADIUM, int RE_BRANCH, String RE_DATE);

}
