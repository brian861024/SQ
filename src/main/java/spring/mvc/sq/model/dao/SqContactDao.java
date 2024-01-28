package spring.mvc.sq.model.dao;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import spring.mvc.sq.model.entity.*;

public interface SqContactDao {
//	聯絡-Contact
//	創造聯絡單
	void addContact(Contact contact);
//	根據聯絡單ID找出聯絡單(單筆)
	Optional<Contact> findContactByContactId(Integer contactId);
//	根據主旨找出聯絡單
	Optional<Contact> findContactByTitle(String title);
//	找出所有聯絡單
	List<Contact> findAllContact();
}
