package com.zero.repository;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.RandomStringUtils;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.zero.domain.Branch;
import com.zero.domain.CupPlayer;
import com.zero.domain.CupSchedule;
import com.zero.domain.CupTeam;

@Repository
public class ManagerRepositoryImpl implements ManagerRepository {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	@Override
	public void cancleReservation (int re_no) {
		sql.update("Branch.rCancel", re_no);
	}
	
	

}
