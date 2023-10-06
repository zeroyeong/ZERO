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
	
	 /*______회원가입______*/
	@Override
	public void addMember(Member member) {		
		sql.insert("Member.insertMember", member);
	}
	
	@Override
	public int checkId(String mem_id) {
		int result = sql.selectOne("Member.idCheck", mem_id);
		return result;
	}
	
	/*______로그인______*/
	@Override
	public String login(Member member) {
		return sql.selectOne("Member.login", member);
	}
	
	/*______계정찾기______*/
	// 아이디 찾기
	@Override
	public String findMemberId(Member member) {
		return sql.selectOne("Member.findMemberId", member);
	}; 
	
	// 비밀번호 찾기
	@Override
	public String findMemberPw(Member member) {
		return sql.selectOne("Member.findMemberPw", member);
	}; 
	
	/*______마이페이지______*/
	@Override
	public Member getMemberInfo(String mem_id) {
		Member member = sql.selectOne("Member.getMemberLoginInfo", mem_id);
		return member;
	}

	@Override
	public void updateMember(Member member) {
		sql.update("Member.updateMember", member);
	}
	
	/*______탈퇴______*/
	@Override
	public void deleteMember(String mem_id) {
		sql.delete("Member.deleteMember", mem_id);
	}
}
