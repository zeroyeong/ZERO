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
    public List<Branch> getList() {
        return sql.selectList("Branch.read");
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
}