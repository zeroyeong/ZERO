package com.zero.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zero.repository.ManagerRepository;

@Service
public class ManagerServiceImpl implements ManagerService {

	@Autowired
	private ManagerRepository managerRepository;
	
	@Override
	public void cancleReservation(int re_no) {
		managerRepository.cancleReservation(re_no);
	}
	
}
  