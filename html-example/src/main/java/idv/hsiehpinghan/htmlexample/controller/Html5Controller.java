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
	
	@RequestMapping(value = "/dom/form", method = RequestMethod.GET)
	public ModelAndView domForm(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("html5/dom/parameter");
		model.addObject("parameter", "form - parameter1 : " + request.getParameter("parameter1") + "; parameter2 : " + request.getParameter("parameter2"));
		return model;
	}
	
	@RequestMapping(value = "/dom/overrideForm", method = RequestMethod.POST)
	public ModelAndView domOverrideForm(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("html5/dom/parameter");
		model.addObject("parameter", "overrideForm - parameter1 : " + request.getParameter("parameter1") + "; parameter2 : " + request.getParameter("parameter2"));
		return model;
	}
	
	@RequestMapping(value = "/css/index", method = RequestMethod.GET)
	public String cssIndex() {
		return "html5/css/index";
	}
	
	@RequestMapping(value = "/css/multilineOverflow", method = RequestMethod.GET)
	public String multilineOverflow() {
		return "html5/css/multilineOverflow";
	}
	
	@RequestMapping(value = "/iframe/index", method = RequestMethod.GET)
	public String iframeIndex() {
		return "html5/iframe/index";
	}
	
	@RequestMapping(value = "/iframe/iframeWithEcharts", method = RequestMethod.GET)
	public String iframeWithEcharts() {
		return "html5/iframe/iframeWithEcharts";
	}
}
