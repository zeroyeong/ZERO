package com.zero.repository; 

import org.apache.commons.lang3.StringUtils;
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
	public String login(Member member) {
		return sql.selectOne("Member.login", member);
	}

	@Override
	public Member getBySns(String snsId, String emailId, String snsType) {
				
		if(snsType.equals("naver")) {		
			return sql.selectOne("Member.getBySnsNaver", emailId);
		} else {
			return sql.selectOne("Member.getBySnsGoogle", emailId);
		}
	}
	
	/*______����ã��______*/
	// ���̵� ã��
	@Override
	public String findMemberId(Member member) {
		return sql.selectOne("Member.findMemberId", member);
	}; 
	
	// ��й�ȣ ã��
	@Override
	public String findMemberPw(Member member) {
		return sql.selectOne("Member.findMemberPw", member);
	}; 
	
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
	
	@Override
	public void selectMember(int mem_no) {
		sql.selectOne("Member.memberRead", mem_no);
	}
}
