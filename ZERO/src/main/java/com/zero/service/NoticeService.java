package com.zero.service;

import java.util.List;

import com.zero.domain.Faq;
import com.zero.domain.Notice;

public interface NoticeService {
	
	List<Notice> noticeList();
	
	List<Faq> faqList();

	Notice getNotice(int notice_no);
	
	Faq getFaq(int faq_no);
	
	void updateNotice(Notice notice);
	
	void updateFaq(Faq faq);
	 
	void deleteNotice(int notice_no);
	
	void deleteFaq(int faq_no);
	
	void addNotice(Notice notice);
	
	void addFaq(Faq faq);
	
	void countNoticeHit(int notice_no);
	
	void countFaqHit(int faq_no);
	
	List<Notice> noticePrevNext(int notice_no);
	
	List<Faq> faqPrevNext(int faq_no);
	
	List<Notice> titleSearchNotice(String keyword);
	
	List<Faq> titleSearchFaq(String keyword);
}
