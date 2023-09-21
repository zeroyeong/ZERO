package com.zero.service;

import java.util.List;

import com.zero.domain.Branch;
import com.zero.domain.Reservation;

public interface BranchService {

    List<Branch> getList();

    Branch getbranchInfo(String BRANCH_CODE);

    Reservation addReservation(Reservation reservation);

    List<Reservation> timeList(int RE_STADIUM, int RE_BRANCH, String RE_DATE);
}