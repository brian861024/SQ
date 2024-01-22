package spring.mvc.sq.model.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Contact {

    private String customerName; // 留言板名稱
    private String customerEmail; // 留言板信箱
    private String contactTitle; // 留言板標題
    private String contactContext; // 留言板內容
    
}