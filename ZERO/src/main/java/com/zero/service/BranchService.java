package com.zero.service;

import java.util.List;

import com.zero.domain.Branch;
import com.zero.domain.Reservation;

public interface BranchService {

    List<Branch> getList();

    Branch getbranchInfo(String branch_code);

    Reservation addReservation(Reservation reservation);

    List<Reservation> timeList(int re_stadium, int re_branch, String re_date);
}