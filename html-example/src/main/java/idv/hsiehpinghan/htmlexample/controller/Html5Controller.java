package idv.hsiehpinghan.htmlexample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/html5")
public class Html5Controller {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "html5/index";
	}

	@RequestMapping(value = "/dom/index", method = RequestMethod.GET)
	public String navbarIndex() {
		return "html5/dom/index";
	}

}
