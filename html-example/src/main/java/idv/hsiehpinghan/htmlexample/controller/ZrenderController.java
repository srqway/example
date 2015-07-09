package idv.hsiehpinghan.htmlexample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/zrender")
public class ZrenderController {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "zrender/index";
	}

	@RequestMapping(value = "/circle", method = RequestMethod.GET)
	public String circle() {
		return "zrender/circle";
	}
}
