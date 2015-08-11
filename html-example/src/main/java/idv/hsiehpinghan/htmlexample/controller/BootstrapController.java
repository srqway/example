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

	@RequestMapping(value = "/nonResponsive/index", method = RequestMethod.GET)
	public String nonResponsive() {
		return "bootstrap/nonResponsive/index";
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

	@RequestMapping(value = "/inputGroup/index", method = RequestMethod.GET)
	public String inputGroupIndex() {
		return "bootstrap/inputGroup/index";
	}

	@RequestMapping(value = "/panel/index", method = RequestMethod.GET)
	public String panelIndex() {
		return "bootstrap/panel/index";
	}

	@RequestMapping(value = "/table/index", method = RequestMethod.GET)
	public String tableIndex() {
		return "bootstrap/table/index";
	}

	@RequestMapping(value = "/form/index", method = RequestMethod.GET)
	public String formIndex() {
		return "bootstrap/form/index";
	}

	@RequestMapping(value = "/pagination/index", method = RequestMethod.GET)
	public String paginationIndex() {
		return "bootstrap/pagination/index";
	}

	@RequestMapping(value = "/image/index", method = RequestMethod.GET)
	public String imageIndex() {
		return "bootstrap/image/index";
	}

	@RequestMapping(value = "/text/index", method = RequestMethod.GET)
	public String textIndex() {
		return "bootstrap/text/index";
	}

	@RequestMapping(value = "/buttonGroup/index", method = RequestMethod.GET)
	public String buttonGroup() {
		return "bootstrap/buttonGroup/index";
	}
	
	@RequestMapping(value = "/button/index", method = RequestMethod.GET)
	public String button() {
		return "bootstrap/button/index";
	}
}
