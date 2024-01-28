package spring.mvc.sq.model.dao;

import java.util.List;

import spring.mvc.sq.model.entity.Notice;

public interface SqNoticeDao {

//	創造聯絡單
	void addNotice(Notice notice);
//	找出所有聯絡單
	List<Notice> findAllNotice();
	
//	找出所有聯絡單
	Notice findNoticeById(Integer noticeId);
}
