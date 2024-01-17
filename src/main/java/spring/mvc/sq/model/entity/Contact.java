package spring.mvc.sq.model.entity;

public class Contact {

    private String name;
    private String email;
    private Integer title; // 修改屬性名稱為 title，並修改資料型態為 Integer
    private String text;

    public Contact() {

    }

    public Contact(String name, String email, Integer title, String text) {
        this.name = name;
        this.email = email;
        this.title = title;
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

    public Integer getTitle() {
        return title;
    }

    public void setTitle(Integer title) {
        this.title = title;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    @Override
    public String toString() {
        return "Contact [name=" + name + ", email=" + email + ", title=" + title + ", text=" + text + "]";
    }
}