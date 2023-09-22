package com.zero.repository;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.zero.domain.Member;

public class JoinRepositoryImpl implements JoinRepository {
	
	 @Autowired
     private SqlSessionTemplate sql;	 
	 private List<Member> list = new ArrayList<Member>();
	
	@Override
	public void addMember(Member member) {		
		sql.insert("Member.insertMember", member);
	}
}
