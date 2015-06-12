package idv.hsiehpinghan.htmlexample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/bootstrap")
public class BootstrapController {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "bootstrap/index";
	}

	@RequestMapping(value = "/navbar/index", method = RequestMethod.GET)
	public String navbarIndex() {
		return "bootstrap/navbar/index";
	}
	
	@RequestMapping(value = "/navbar/base", method = RequestMethod.GET)
	public String navbarBase() {
		return "bootstrap/navbar/base";
	}
	
	@RequestMapping(value = "/navbar/hide", method = RequestMethod.GET)
	public String navbarHide() {
		return "bootstrap/navbar/hide";
	}
	
	@RequestMapping(value = "/navbar/top", method = RequestMethod.GET)
	public String navbarTop() {
		return "bootstrap/navbar/top";
	}
	
	@RequestMapping(value = "/tabs/index", method = RequestMethod.GET)
	public String tabsIndex() {
		return "bootstrap/tabs/index";
	}
	
	@RequestMapping(value = "/listGroup/index", method = RequestMethod.GET)
	public String listGroupIndex() {
		return "bootstrap/listGroup/index";
	}
}
