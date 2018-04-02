package edu.vn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.vn.models.Address;
import edu.vn.models.Users;
import edu.vn.services.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@RequestMapping(value ="/excute", method = RequestMethod.GET)
	public String excute() {
		Address address = new Address("123123", "Thai Nguyen", "Thành phố", "Hồ tùng mậu", "Số nhà 23");
		userService.save(new Users("chicken", "ducky", "parrot", "turtle", address, "tiger"));
		return "index";
	}
}
