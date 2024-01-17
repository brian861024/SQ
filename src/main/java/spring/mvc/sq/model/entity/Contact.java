package spring.mvc.sq.model.entity;

public class Contact {

	private String name;
	private String email;
	private String tital;
	private String text;
	
	public Contact() {
		
	}
	
	public Contact(String name, String email, String tital, String text) {
		this.name = name;
		this.email = email;
		this.tital = tital;
		this.text = text;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTital() {
		return tital;
	}

	public void setTital(String tital) {
		this.tital = tital;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	@Override
	public String toString() {
		return "Contact [name=" + name + ", email=" + email + ", tital=" + tital + ", text=" + text + "]";
	}
	
}
