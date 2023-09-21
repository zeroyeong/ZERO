package com.zero.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zero.domain.Branch;
import com.zero.domain.Reservation;
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
    public Branch getbranchInfo(String branch_code) {
        Branch branch = branchRepository.getbranchInfo(branch_code);
        return branch;
    }

    @Override
    public Reservation addReservation(Reservation reservation) {
        branchRepository.addReservation(reservation);
		return reservation;
    }
    @Override
    public List<Reservation> timeList(int re_stadium, int re_branch, String re_date) {
    	return branchRepository.timeList(re_stadium, re_branch, re_date);
    }

}