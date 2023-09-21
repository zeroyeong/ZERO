package com.zero.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zero.domain.Branch;
import com.zero.repository.BranchRepository;

@Service
public class BranchServiceImpl implements BranchService {
	
	@Autowired
	private BranchRepository branchRepository;
	
	@Override
	public List<Branch> getList() {
		return branchRepository.getList();
	}
	
	@Override
	public Branch getbranchInfo(String BRANCH_CODE) {
		Branch branch = branchRepository.getbranchInfo(BRANCH_CODE);
		return branch;
	}
	
    @Override
    public void reservationBranch(Branch branch) {
        branchRepository.reservationBranch(branch);
    }
    
    @Override
    public List<Branch> timeList(int RE_STADIUM, int RE_BRANCH, String RE_DATE) {
    	return branchRepository.timeList(RE_STADIUM, RE_BRANCH, RE_DATE);
    }

}
