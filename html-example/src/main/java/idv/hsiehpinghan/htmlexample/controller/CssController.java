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

	@RequestMapping(value = "/multilineOverflow", method = RequestMethod.GET)
	public String cssMultilineOverflow() {
		return "css/multilineOverflow";
	}
	
	@RequestMapping(value = "/background", method = RequestMethod.GET)
	public String cssBackground() {
		return "css/background";
	}

	@RequestMapping(value = "/text", method = RequestMethod.GET)
	public String cssText() {
		return "css/text";
	}

	@RequestMapping(value = "/font", method = RequestMethod.GET)
	public String cssFont() {
		return "css/font";
	}

	@RequestMapping(value = "/table", method = RequestMethod.GET)
	public String cssTable() {
		return "css/table";
	}

	@RequestMapping(value = "/boxModel", method = RequestMethod.GET)
	public String boxModel() {
		return "css/boxModel";
	}
}
