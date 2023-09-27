package com.zero.repository;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zero.domain.Faq;
import com.zero.domain.Notice;


@Repository
public class NoticeRepositoryImpl implements NoticeRepository {
		
	@Autowired
	private SqlSessionTemplate sql;
	
	
	@Override
	public List<Notice> getNoticeList() {
		// TODO Auto-generated method stub
		return sql.selectList("Notice.selectNotice");
	}

	@Override
	public List<Faq> getFaqList() {
		// TODO Auto-generated method stub
		return sql.selectList("Notice.selectFaq");
	}

	@Override
	public Notice getByNotNo(int notNo) {
		return sql.selectOne("Notice.byNotNo", notNo);
	}
	
	@Override
	public Faq getByFaqNo(int faqNo) {
		return sql.selectOne("Notice.byFaqNo", faqNo);
	}
	
	@Override
	public void setNewNotice(Notice notice) {
		// TODO Auto-generated method stub

    	sql.insert("Notice.insertNotice", notice);
	}

	@Override
	public void setNewFaq(Faq faq) {
		// TODO Auto-generated method stub
		
		sql.insert("Notice.insertFaq", faq);

	}

	@Override
	public void updateNotice(Notice notice) {
		// TODO Auto-generated method stub

		sql.update("Notice.updateNotice", notice);
	}

	@Override
	public void updateFaq(Faq faq) {
		// TODO Auto-generated method stub
		
		sql.update("Notice.updateFaq", faq);

	}

	@Override
	public void deleteNotice(int notNo) {
		// TODO Auto-generated method stub
		
		sql.delete("Notice.deleteNotice", notNo);

	}

	@Override
	public void deleteFaq(int faqNo) {
		// TODO Auto-generated method stub
		
		sql.delete("Notice.deleteFaq", faqNo);

	}

}