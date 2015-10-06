package idv.hsiehpinghan.htmlexample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/css")
public class CssController {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "css/index";
	}

	// @RequestMapping(value = "/dom/index", method = RequestMethod.GET)
	// public String domIndex() {
	// return "html5/dom/index";
	// }

}
