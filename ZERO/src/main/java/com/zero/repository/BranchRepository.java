package com.zero.repository;

import java.util.List;

import com.zero.domain.Branch;
import com.zero.domain.Reservation;

public interface BranchRepository {

    List<Branch> branchList();

    Branch getbranchInfo(String branch_code);

    void addReservation(Reservation reservation);
    
    List<Reservation> timeList(int re_stadium, int re_branch, String re_date);

    List<Reservation> reservationList(String re_name, String re_pwd);
    
    void deleteReservation(int re_no, String re_pwd);
    
    List<Reservation> ReservationList();

}