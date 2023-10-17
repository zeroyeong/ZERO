package com.zero.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zero.domain.Member;
 
@Repository
public class ManagerRepositoryImpl implements ManagerRepository {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	@Override
	public void cancleReservation (int re_no) {
		sql.update("Branch.rCancel", re_no);
	}
	
	@Override
	public void updateMgrMember (Member member) {
		sql.update("Member.updateMgrMember", member);
	}

}
  