package org.spring.reading.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	// user controller
	
	// page change - login
	@RequestMapping("/user/userLoginScreen.do")
	public String userLoginScreen() {
		return "user/userLoginScreen";
	}
}
