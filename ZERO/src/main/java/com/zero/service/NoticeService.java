package com.zero.service;

import java.util.List;

import com.zero.domain.Faq;
import com.zero.domain.Notice;

public interface NoticeService {
	
	public List<Notice> getNoticeList();
	
	public List<Faq> getFaqList();
	
	public Notice getByNotNo(int notNo);
	
	public Faq getByFaqNo(int faqNo);
	
	public void setNewNotice(Notice notice);
	
	public void setNewFaq(Faq faq);
	
	public void updateNotice(int notNo);
	
	public void updateFaq(int faqNo);
	
	public void deleteNotice(int notNo);
	
	public void deleteFaq(int faqNo);

	

}
 