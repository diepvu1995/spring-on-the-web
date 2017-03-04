package springmvc.controllers;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/")
public class HomeController {
	@RequestMapping(method = GET)
	public String home() {
		return "home";
	}
}
