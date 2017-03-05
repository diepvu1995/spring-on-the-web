package springmvc.controllers;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/")
public class HomeController {
	@RequestMapping(method = GET)
	public String home() {
		return "home";
	}

	// mot ham co the phuc vu cho nhieu duong dan
	@RequestMapping(value = { "/home", "/home1" }, method = GET)
	public String home1() {
		return "home";
	}
}
