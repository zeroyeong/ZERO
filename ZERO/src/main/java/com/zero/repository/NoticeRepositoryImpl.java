package com.zero.repository;

import java.util.ArrayList;
import java.util.List;
import java.io.File;
import java.util.Date;
import java.text.SimpleDateFormat;

import org.apache.commons.lang3.RandomStringUtils;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

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
		
		//real DATE
	    Date currentDate = new Date();

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String formattedDate = dateFormat.format(currentDate);
		
		notice.setNotDate(formattedDate);
		notice.setNotHit(0);
		
		if(notice.getFileName() != null) {
			
			MultipartFile file = notice.getFileName();
			String saveName = file.getOriginalFilename();
			File saveFile = new File("C:\\Users\\Administrator\\git\\ZERO\\ZERO\\src\\main\\webapp\\resources\\images", saveName);
		try {
				file.transferTo(saveFile);
				notice.setNotFile(saveName);
		} catch (Exception e) {
			throw new RuntimeException("file saving failed", e);
		}
			notice.setNotFile(saveName);
		}else {
			notice.setNotFile("");
		}

    	sql.insert("Notice.insertNotice", notice);
	}

	@Override
	public void setNewFaq(Faq faq) {
		
		//real DATE
	    Date currentDate = new Date();

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String formattedDate = dateFormat.format(currentDate);
		
		faq.setFaqDate(formattedDate);
		faq.setFaqHit(0);
		sql.insert("Notice.insertFaq", faq);

	}

	@Override
	public void updateNotice(int notNo) {
		// TODO Auto-generated method stub

		sql.update("Notice.updateNotice", notNo);
	}

	@Override
	public void updateFaq(int faqNo) {
		// TODO Auto-generated method stub
		
		sql.update("Notice.updateFaq", faqNo);

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