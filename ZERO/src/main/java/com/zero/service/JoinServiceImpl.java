package com.zero.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zero.domain.Member;
import com.zero.repository.JoinRepository;

@Service
public class JoinServiceImpl implements JoinService {
	
	@Autowired
	private JoinRepository joinRepository;
	
	@Override
	public void addMember(Member member) {
		joinRepository.addMember(member);
	}
}
