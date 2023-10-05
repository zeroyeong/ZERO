package com.zero.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zero.domain.Branch;
import com.zero.domain.Reservation;

@Repository
public class BranchRepositoryImpl implements BranchRepository {

    @Autowired
    private SqlSessionTemplate sql;

    @Override
    public List<Branch> branchList() {
        return sql.selectList("Branch.bList");
    }

    @Override
    public Branch getbranchInfo(String branch_code) {
        return sql.selectOne("Branch.readInfo", branch_code);
    }

    @Override
    public void addReservation(Reservation reservation) {
        sql.insert("Branch.insertRes", reservation);
    }
    
	@Override
	public List<Reservation> timeList(int re_stadium, int re_branch, String re_date) {
	    Map<String, Object> parameters = new HashMap<>();
	    parameters.put("re_stadium", re_stadium);
	    parameters.put("re_branch", re_branch);
	    parameters.put("re_date", re_date);
	    return sql.selectList("Branch.checkTime", parameters);
	}
	
	@Override
	public List<Reservation> reservationList(String re_name, String re_pwd) {
	    Map<String, Object> parameters = new HashMap<>();
	    parameters.put("re_name", re_name);
	    parameters.put("re_pwd", re_pwd);
		return sql.selectList("Branch.rList", parameters);
	}
	@Override
	public void deleteReservation(int re_no, String re_pwd) {
	    Map<String, Object> parameters = new HashMap<>();
	    parameters.put("re_no", re_no);
	    parameters.put("re_pwd", re_pwd);
		sql.delete("Branch.rDelete", parameters);
	}
	@Override
	public List<Reservation> ReservationList() {
		return sql.selectList("Branch.mList");
	}
}