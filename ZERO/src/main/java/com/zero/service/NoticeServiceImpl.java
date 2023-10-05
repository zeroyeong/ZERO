package com.zero.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zero.domain.Faq;
import com.zero.domain.Notice;
import com.zero.repository.NoticeRepository;

/* ���� ������ ���������̼� ����(view) �� �۽ý��Ͻ� ����(�޼��� ���ǵ� Repository) ���̸� �����մϴ�.
 * @Service �� ���� �մϴ�. */
@Service
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	 private NoticeRepository noticeRepository;
	
	@Override
	public List<Notice> getNoticeList() {
		// TODO Auto-generated method stub
		return noticeRepository.getNoticeList();
	}

	@Override
	public List<Faq> getFaqList() {
		// TODO Auto-generated method stub
		return noticeRepository.getFaqList();
	}
	
	@Override
	public Notice getByNotNo(int notNo) {
		
		return noticeRepository.getByNotNo(notNo);
	}
	
	@Override
	public Faq getByFaqNo(int faqNo) {
		
		return noticeRepository.getByFaqNo(faqNo);
	}
	
	@Override
	public void setNewNotice(Notice notice) {
		// TODO Auto-generated method stub
		
		noticeRepository.setNewNotice(notice);

	}

	@Override
	public void setNewFaq(Faq faq) {
		// TODO Auto-generated method stub
		
		noticeRepository.setNewFaq(faq);

	}

	@Override
	public void updateNotice(int notNo) {
		// TODO Auto-generated method stub
		
		noticeRepository.updateNotice(notNo);

	}

	@Override
	public void updateFaq(int faqNo) {
		// TODO Auto-generated method stub
		
		noticeRepository.updateFaq(faqNo);

	}

	@Override
	public void deleteNotice(int notNo) {
		// TODO Auto-generated method stub
		
		noticeRepository.deleteNotice(notNo);

	}

	@Override
	public void deleteFaq(int faqNo) {
		// TODO Auto-generated method stub
		
		noticeRepository.deleteFaq(faqNo);

	}

}

