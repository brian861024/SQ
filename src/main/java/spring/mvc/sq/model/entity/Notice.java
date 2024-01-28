package spring.mvc.sq.model.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Notice {
	
	private String noticeId; // 公告id
    private String noticeTitle; // 公告主旨
    private String noticeContext; // 公告內容
    
}
