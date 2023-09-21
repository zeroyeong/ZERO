package com.zero.repository;

import java.util.List;

import com.zero.domain.Branch;

public interface BranchRepository {
	
	List<Branch> getList();
	
	Branch getbranchInfo(String BRANCH_CODE);

	void reservationBranch(Branch branch);
	
	List<Branch> timeList(int RE_STADIUM, int RE_BRANCH, String RE_DATE);

}
