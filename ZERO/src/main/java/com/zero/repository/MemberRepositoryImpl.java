package com.zero.repository;

import java.util.ArrayList; 
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zero.domain.Member;

@Repository
public class MemberRepositoryImpl implements MemberRepository {
	
	 @Autowired
     private SqlSessionTemplate sql;	
	 private List<Member> list = new ArrayList<Member>();
	
	 /*______ȸ������______*/
	@Override
	public void addMember(Member member) {		
		sql.insert("Member.insertMember", member);
	}
	
	@Override
	public int checkId(String mem_id) {
		int result = sql.selectOne("Member.idCheck", mem_id);
		return result;
	}
	
	/*______�α���______*/
	public Member getMemberLoginInfo(String mem_id) {
		Member member = sql.selectOne("Member.getMemberLoginInfo", mem_id);
		System.out.println(member);
		return member;
	}
	
	/*______����������______*/
	public Member getMemberInfo(String mem_id) {
		Member member = sql.selectOne("Member.getMemberLoginInfo", mem_id);
		return member;
	}

	public void updateMember(Member member) {
		sql.update("Member.updateMember", member);
	}
	
	/*______Ż��______*/
	public void deleteMember(String mem_id) {
		sql.delete("Member.deleteMember", mem_id);
	}
}
