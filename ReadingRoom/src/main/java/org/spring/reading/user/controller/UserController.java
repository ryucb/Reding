package org.spring.reading.user.controller;

import org.spring.reading.user.model.service.UserService;
import org.spring.reading.user.model.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	// user controller
	
	@Autowired
	private UserService service;
//	아직 DB 생성한게 없어서 암호화 사용할 일이 없음 회원가입, 로그인 진행 시 비밀번호 암호화 처리 예정
	@Autowired
	private BCryptPasswordEncoder encoder; // 단방향 암호화
	
	// page change - login(일반사용자 로그인화면 이동)
	@RequestMapping("/user/userLoginScreen.do")
	public String userLoginScreen() {
		return "user/userLoginScreen";
	}
	
	// user loginEnd(일반사용자 로그인하기)
	@RequestMapping("/user/login.do")
	public String userLogin(String userId, String userPw, Model m) {
		User login = service.selectUserId(userId);
		System.out.println("로그인하려고 하는 유저정보"+login);
		String page="";
		if(login.getUserId()!=userId) {
			System.out.println("로그인 실패 : 아이디가 일치하지 않음!");
			m.addAttribute("msg", "로그인 실패! (사유 : 아이디가 존재하지 않음)");
			m.addAttribute("loc", "/user/userLoginScreen.do"); // 로그인 화면으로 이동
		}
		return page;
	}
}
