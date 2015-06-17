package idv.hsiehpinghan.htmlexample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/colorbox")
public class ColorboxController {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "colorbox/index";
	}

	@RequestMapping(value = "/ajax", method = RequestMethod.GET)
	public @ResponseBody String ajax() {
		return "This is ajax";
	}

}
