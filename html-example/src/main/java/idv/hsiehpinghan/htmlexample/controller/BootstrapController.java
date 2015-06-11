package idv.hsiehpinghan.htmlexample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/bootstrap", method = RequestMethod.GET)
public class BootstrapController {
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "bootstrap/index";
	}

	@RequestMapping(value = "/navbar", method = RequestMethod.GET)
	public String navbar() {
		return "bootstrap/navbar";
	}
}
