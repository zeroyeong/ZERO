package com.zero.repository;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zero.domain.Member;

@Repository
public class JoinRepositoryImpl implements JoinRepository {
	
	 @Autowired
     private SqlSessionTemplate sql;	 
	 private List<Member> list = new ArrayList<Member>();
	
	@Override
	public void addMember(Member member) {		
		sql.insert("Member.insertMember", member);
	}
	
	@Override
	public void checkId(String mem_id) {
		sql.selectOne("Member.idCheck", mem_id);
	}
}
