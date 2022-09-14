package com.human.ex;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestController {


	@RequestMapping(value = "/board/view", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		System.out.println("hello board");
		return "board/view";
	}
	
	@RequestMapping(value = "/board/hello", method = RequestMethod.GET)
	public String hello(Locale locale, Model model) {
		System.out.println("hello 지성진");
		return "board/hello";
	}
}

