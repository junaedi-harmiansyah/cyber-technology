package com.ct.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author junaedi harmiansyah 23 april 2020 class mapping controller view
 *
 */
@Controller
public class JspController {

	@RequestMapping("login")
	public String login() {
		return "login";
	}

	@RequestMapping("product")
	public String product() {
		return "product";
	}

	@RequestMapping("finance")
	public String finance() {
		return "finance";
	}

	@RequestMapping("user")
	public String user() {
		return "user";
	}

	@RequestMapping("market")
	public String market() {
		return "user";
	}
}
