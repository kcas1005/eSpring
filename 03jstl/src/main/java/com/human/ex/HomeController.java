package com.human.ex;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		String name="hello";
		int num=10;
		Human human = new Human("홍길동","10");
		ArrayList<Human> list = new ArrayList<Human>();
		list.add(new Human("홍길동1","11"));
		list.add(new Human("홍길동2","12"));
		list.add(new Human("홍길동3","13"));
		list.add(new Human("홍길동4","14"));
		
		model.addAttribute("name", name);
		model.addAttribute("num", num);
		model.addAttribute("human", human);
		model.addAttribute("list", list);
		return "home";
	}
	
}
