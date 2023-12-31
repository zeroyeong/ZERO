package com.zero.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.zero.domain.Faq;
import com.zero.domain.Notice;
import com.zero.service.NoticeService;

@Controller
public class NoticeController {
	
	@Autowired NoticeService noticeService;
	
	@GetMapping("/service")
	public String getService(@ModelAttribute("Faq") Faq faq, @ModelAttribute("Notice") Notice notice, Model model) {
		
		List<Notice> nlist = noticeService.noticeList();
		List<Faq> flist = noticeService.faqList();
		
		model.addAttribute("noticeList", nlist);
		model.addAttribute("faqList", flist);
		
		return "service/service";
	}
	
	@GetMapping("/service/notice_{notice_no}")
	public String getNotice(@PathVariable int notice_no, Model model, HttpServletRequest request, HttpServletResponse response) {
		
	    Cookie[] cookies = request.getCookies();
	    boolean cookchk = false;
	    
	    if (cookies != null) {
	        for (Cookie cookie : cookies) {
	            if (cookie.getName().equals("noticehit_" + notice_no)) {
	                cookchk = true;
	                break;
	            }
	        }
	    }
	    if (!cookchk) {
	        noticeService.countNoticeHit(notice_no);      
	        Cookie hitCookie = new Cookie("noticehit_" + notice_no, "true");
	        hitCookie.setMaxAge(24 * 60 * 60);
	        response.addCookie(hitCookie);
	    }	    
        Notice notice = noticeService.getNotice(notice_no);
        model.addAttribute("notice", notice);
        
        List<Notice> list = noticeService.noticePrevNext(notice_no);
        model.addAttribute("list", list);
        
	    return "service/noticeView";
	}
	
	@GetMapping("/service/faq_{faq_no}")
	public String getFaq(@PathVariable int faq_no, Model model, HttpServletRequest request, HttpServletResponse response) {
		
	    Cookie[] cookies = request.getCookies();
	    boolean cookchk = false;
	    
	    if (cookies != null) {
	        for (Cookie cookie : cookies) {
	            if (cookie.getName().equals("faqhit_" + faq_no)) {
	                cookchk = true;
	                break;
	            }
	        }
	    }
	    if (!cookchk) {
	    	noticeService.countFaqHit(faq_no);     
	        Cookie hitCookie = new Cookie("faqhit_" + faq_no, "true");
	        hitCookie.setMaxAge(24 * 60 * 60);
	        response.addCookie(hitCookie);
	    }		
		Faq faq = noticeService.getFaq(faq_no);
		model.addAttribute("faq", faq);
		
		List<Faq> list = noticeService.faqPrevNext(faq_no);
		model.addAttribute("list", list);
		
		return "service/faqView";
	}
	@GetMapping("/service/notice_{notice_no}/update")
	public String getNoticeUpdate(@PathVariable int notice_no, Model model) {
	    Notice notice = noticeService.getNotice(notice_no);
	    
	    model.addAttribute("notice", notice);
		return "service/noticeUpdate";
	}
	@PostMapping("/service/notice_{notice_no}/update")
	public String postNoticeUpdate(@ModelAttribute("notice") Notice notice) {
		
    	MultipartFile notice_image = notice.getNotice_imagefile();  

        String saveName = notice_image.getOriginalFilename();  
        File saveFile = new File("C:\\Users\\Administrator\\git\\ZERO\\ZERO\\src\\main\\webapp\\resources\\images", saveName); 
        
        if (notice_image != null && !notice_image.isEmpty()) {
            try {
         	   notice_image.transferTo(saveFile);  
            	notice.setNotice_imagename(saveName);
            } catch (Exception e) {
                throw new RuntimeException("이미지 업로드가 실패하였습니다", e);
            }
        }	      
		noticeService.updateNotice(notice);
		return "redirect:/service";
	}
	@GetMapping("/service/faq_{faq_no}/update")
	public String getFaqUpdate(@PathVariable int faq_no, Model model) {
	    Faq faq = noticeService.getFaq(faq_no);
	    
	    model.addAttribute("faq", faq);
		return "service/faqUpdate";
	}
	@PostMapping("/service/faq_{faq_no}/update")
	public String postFaqUpdate(@ModelAttribute("faq") Faq faq) {
		noticeService.updateFaq(faq);
		return "redirect:/service";
	}
	@PostMapping("/service/notice_{notice_no}/delete")
	public String deleteNotice(@RequestParam("notice_no") int notice_no) {
		Notice notice = noticeService.getNotice(notice_no);
		String fileName = notice.getNotice_imagename();
		
		noticeService.deleteNotice(notice_no);
		
	    if (fileName != null) {
	        String filePath = "C:\\Users\\Administrator\\git\\ZERO\\ZERO\\src\\main\\webapp\\resources\\images\\" + fileName;

	        File file = new File(filePath);
	        if (file.exists()) {
	            file.delete();
	        }
	    }
		return "redirect:/service";
	}
	@PostMapping("/service/faq_{faq_no}/delete")
	public String deleteFaq(@RequestParam("faq_no") int faq_no) {
		noticeService.deleteFaq(faq_no); 
		
		return "redirect:/service";
	}
	@GetMapping("/service/noticeAdd")
	public String getaddNotice(@ModelAttribute("notice") Notice notice) {
		return "service/noticeAdd";
	}
	@PostMapping("/service/noticeAdd")
	public String postaddNotice(@ModelAttribute("notice") Notice notice, BindingResult result) {
    	
    	if(result.hasErrors()) { 
            return "service/service";
        } 

    	MultipartFile notice_image = notice.getNotice_imagefile();  

       String saveName = notice_image.getOriginalFilename();  
       File saveFile = new File("C:\\Users\\Administrator\\git\\ZERO\\ZERO\\src\\main\\webapp\\resources\\images", saveName); 
       
       if (notice_image != null && !notice_image.isEmpty()) {
           try {
        	   notice_image.transferTo(saveFile);  
           	notice.setNotice_imagename(saveName);
           } catch (Exception e) {
               throw new RuntimeException("이미지 업로드가 실패하였습니다", e);
           }
       }
   	
       noticeService.addNotice(notice);   
       return "redirect:/service";  
    } 
	
	@GetMapping("/service/faqAdd")
	public String getaddFaq(@ModelAttribute("faq") Faq faq) {
		return "service/faqAdd";
	}
	@PostMapping("/service/faqAdd")
	public String postaddFaq(@ModelAttribute("faq") Faq faq) {
		
		noticeService.addFaq(faq);
		return "redirect:/service"; 
	}
	
	@GetMapping("/service/noticesearch")
	public String noticeSearch(@RequestParam("keyword") String keyword, Model model) {
		List<Notice> nlist = noticeService.titleSearchNotice(keyword);
		model.addAttribute("noticeList", nlist);
		return "service/service";
	}
	
	@GetMapping("/service/faqsearch")
	public String faqSearch(@RequestParam("keyword") String keyword, Model model) {
		List<Faq> flist = noticeService.titleSearchFaq(keyword);
		model.addAttribute("faqList", flist);
		return "service/service";
	}
	
}
