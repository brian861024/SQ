package spring.mvc.sq.model.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import spring.mvc.sq.model.entity.Notice;

@Repository
public class SqNoticeDaoMySQL implements SqNoticeDao{

	@Autowired
    private JdbcTemplate jdbcTemplate;
	
	//創造公告
	@Override
	public void addNotice(Notice notice) {
		String sql = "INSERT INTO notice(noticeTitle, noticeContext) VALUES (?, ?)";
		jdbcTemplate.update(sql, notice.getNoticeTitle(), notice.getNoticeContext());
	}
	
	//顯示公告
	@Override
	public List<Notice> findAllNotice() {
		String sql = "select noticeTitle, noticeContext from notice";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Notice.class));
	}

	@Override
	public Notice findNoticeById(Integer noticeId) {
	    String sql = "SELECT noticeTitle, noticeContext FROM notice WHERE noticeId = ?";
	    return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Notice.class), noticeId);
	}
	

	
}
