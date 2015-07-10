package idv.hsiehpinghan.htmlexample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/requireJs")
public class RequireJsController {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "requireJs/index";
	}

	@RequestMapping(value = "/dataMain", method = RequestMethod.GET)
	public String dataMain() {
		return "requireJs/dataMain";
	}

	@RequestMapping(value = "/inline", method = RequestMethod.GET)
	public String inline() {
		return "requireJs/inline";
	}

	@RequestMapping(value = "/module", method = RequestMethod.GET)
	public String module() {
		return "requireJs/module";
	}
}
