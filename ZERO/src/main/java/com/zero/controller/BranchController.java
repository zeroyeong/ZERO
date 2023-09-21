package com.zero.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zero.domain.Branch;
import com.zero.service.BranchService;

@Controller
@RequestMapping("/branch")
public class BranchController {
    
    @Autowired
    private BranchService branchService;
    
    @GetMapping
    public String getList(Model model) { 
        List<Branch> list = branchService.getList();
        model.addAttribute("branchList", list);  
        return "branch/branch"; 
    }
    
    @GetMapping("/branchInfo/{BRANCH_CODE}")
    public String branchInfo(@PathVariable String BRANCH_CODE, Model model) {  
        Branch branch = branchService.getbranchInfo(BRANCH_CODE);
        model.addAttribute("branch", branch); 
        return "branch/branchInfo";
    }
    
	@PostMapping("/branchInfo/{BRANCH_CODE}/timeCheck")
	@ResponseBody
	public Map<String, Object> checkTime(@RequestParam("RE_STADIUM") int RE_STADIUM,
	                                     @RequestParam("RE_BRANCH") int RE_BRANCH,
	                                     @RequestParam("RE_DATE") String RE_DATE) {
	    Map<String, Object> response = new HashMap<>();
	    List<Branch> branchList = branchService.timeList(RE_STADIUM, RE_BRANCH, RE_DATE);
	    List<Map<String, Object>> timeList = new ArrayList<>();

	    for (Branch branch : branchList) {
	        Map<String, Object> timeMap = new HashMap<>();
	        timeMap.put("TIME_NO", branch.getTIME_NO());
	        timeMap.put("TIME_START", branch.getTIME_START());
	        timeMap.put("TIME_END", branch.getTIME_END());
	        timeList.add(timeMap);
	    }

	    response.put("timeList", timeList);
	    return response;
	}
    @GetMapping("/branchInfo/{BRANCH_CODE}/reservation")
    public String branchReservation(@ModelAttribute("branch") Branch branch) {
        return "branch/branchInfo";
    }
    
    @PostMapping("/branchInfo/{BRANCH_CODE}/reservation")
    public String reservationBranch(@ModelAttribute("branch") Branch branch) {
        branchService.reservationBranch(branch); 
        return "redirect:/branch";
    }	
	@GetMapping("/reservation")
	public String reservation() {
		return "branch/reservation";
	}
}