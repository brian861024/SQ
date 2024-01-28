package spring.mvc.sq.model.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import spring.mvc.sq.model.entity.Cart;
import spring.mvc.sq.model.entity.Contact;

@Repository
public class SqContactDaoMySQL implements SqContactDao {

    @Override
	public List<Contact> findAllContact() {
    	String sql = "select contactId, customerName, customerEmail, contactTitle, contactContext from contact";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Contact.class));
	}

	@Autowired
    private JdbcTemplate jdbcTemplate;

    // 創造聯絡單
    @Override
    public void addContact(Contact contact) {
        String sql = "INSERT INTO contact(customerName, customerEmail, contactTitle, contactContext) VALUES (?, ?, ?, ?)";
        jdbcTemplate.update(sql, contact.getCustomerName(), contact.getCustomerEmail(), contact.getContactTitle(), contact.getContactContext());
    }

    // 根據聯絡單ID找出聯絡單(單筆)
    @Override
    public Optional<Contact> findContactByContactId(Integer contactId) {
        String sql = "SELECT * FROM contact WHERE contactId = ?";
        try {
            Contact contact = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Contact.class), contactId);
            return Optional.ofNullable(contact);
        } catch (Exception e) {
            return Optional.empty();
        }
    }

    // 根據主旨找出聯絡單
    @Override
    public Optional<Contact> findContactByTitle(String title) {
        String sql = "SELECT * FROM contact WHERE contactTitle = ?";
        try {
            Contact contact = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Contact.class), title);
            return Optional.ofNullable(contact);
        } catch (Exception e) {
            return Optional.empty();
        }
    }
}
