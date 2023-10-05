package com.zero.repository; 

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zero.domain.Member;

@Repository
public class MemberRepositoryImpl implements MemberRepository {
	
	 @Autowired
     private SqlSessionTemplate sql;	
	 /*private List<Member> list = new ArrayList<Member>();*/
	
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
	@Override
	public Member getMemberLoginInfo(String mem_id) {
		Member member = sql.selectOne("Member.getMemberLoginInfo", mem_id);
		System.out.println(member);
		return member;
	}
	
	/*______����������______*/
	@Override
	public Member getMemberInfo(String mem_id) {
		Member member = sql.selectOne("Member.getMemberLoginInfo", mem_id);
		return member;
	}

	@Override
	public void updateMember(Member member) {
		sql.update("Member.updateMember", member);
	}
	
	/*______Ż��______*/
	@Override
	public void deleteMember(String mem_id) {
		sql.delete("Member.deleteMember", mem_id);
	}
	
	/*______����ã��______*/
	// ���̵� ã��
	@Override
	public Member findMemberId(String mem_name, String mem_phone) {
		Member member = sql.selectOne(mem_name, mem_phone);
		System.out.println("Repository: "+member);
		return member;
	}; 
	
	// ��й�ȣ ã��
	@Override
	public Member findMemberPw(String mem_name, String mem_id) {
		Member member = sql.selectOne(mem_name, mem_id);
		System.out.println("Repository: "+member);
		return member;
	}; 
}
