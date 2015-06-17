package idv.hsiehpinghan.htmlexample.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/html5")
public class Html5Controller {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "html5/index";
	}

	@RequestMapping(value = "/dom/index", method = RequestMethod.GET)
	public String domIndex() {
		return "html5/dom/index";
	}

	@RequestMapping(value = "/dom/security", method = RequestMethod.GET)
	public ModelAndView domSecurity(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("html5/dom/security");
		model.addObject("security", request.getParameter("security"));
		return model;
	}
}
