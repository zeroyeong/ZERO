package com.zero.repository;

import java.util.ArrayList;
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
	public List<Branch> getList() {
		return sql.selectList("Branch.read");
	}
	
	@Override
	public Branch getbranchInfo(String BRANCH_CODE) {
	    return sql.selectOne("Branch.readInfo", BRANCH_CODE);
	}
	
	@Override
	public void newReservation(Reservation reservation) {
		sql.insert("Reservation.insert", reservation);
	}
	
	public List<Reservation> timeList(int RE_STADIUM, int RE_BRANCH, String RE_DATE) {
	    Map<String, Object> parameters = new HashMap<>();
	    parameters.put("RE_STADIUM", RE_STADIUM);
	    parameters.put("RE_BRANCH", RE_BRANCH);
	    parameters.put("RE_DATE", RE_DATE);
	    return sql.selectList("Reservation.checkTime", parameters);
	}

}