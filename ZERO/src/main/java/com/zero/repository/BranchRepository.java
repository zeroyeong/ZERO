package com.zero.repository;

import java.util.List;

import com.zero.domain.Branch;
import com.zero.domain.Reservation;

public interface BranchRepository {

    List<Branch> getList();

    Branch getbranchInfo(String BRANCH_CODE);

    void addReservation(Reservation reservation);
    
    List<Reservation> timeList(int RE_STADIUM, int RE_BRANCH, String RE_DATE);

}