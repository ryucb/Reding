package org.spring.reading;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Test {
	
	@RequestMapping("/home.do")
	public String home() {
		return "home";
	}

}
