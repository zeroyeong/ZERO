package com.zero.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.zero.service.ManagerService;

@Controller
public class ManagerController {

	@Autowired
	private ManagerService managerService;

}
 