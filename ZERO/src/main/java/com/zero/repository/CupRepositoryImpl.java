package com.zero.repository;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.RandomStringUtils;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zero.domain.CupTeam;

@Repository
public class CupRepositoryImpl implements CupRepository {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	private List<CupTeam> list = new ArrayList<CupTeam>();
	
	@Override
	public List<CupTeam> getCupTeamList(){

    	return sql.selectList("CupTeam.select");
	}
	
	@Override
	public void setNewCupTeam(CupTeam cupTeam) {
		
		//RANDOM TEAM CODE
		String generatedString = RandomStringUtils.randomAlphanumeric(5);
		cupTeam.setTeamCode(generatedString);
		
		sql.insert("CupTeam.insert", cupTeam);
	}
}
