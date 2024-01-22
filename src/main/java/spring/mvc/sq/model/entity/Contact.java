package spring.mvc.sq.model.entity;

public class Contact {

    private String customerName; // 留言板名稱
    private String customerEmail; // 留言板信箱
    private String contactTitle; // 留言板標題
    private String contactContext; // 留言板內容

    public Contact() {

    }

	public Contact(String customerName, String customerEmail, String contactTitle, String contactContext) {
		this.customerName = customerName;
		this.customerEmail = customerEmail;
		this.contactTitle = contactTitle;
		this.contactContext = contactContext;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public String getContactTitle() {
		return contactTitle;
	}

	public void setContactTitle(String contactTitle) {
		this.contactTitle = contactTitle;
	}

	public String getContactContext() {
		return contactContext;
	}

	public void setContactContext(String contactContext) {
		this.contactContext = contactContext;
	}
    
}