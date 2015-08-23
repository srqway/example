package idv.hsiehpinghan.htmlexample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/angular")
public class AngularController {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "angular/index";
	}

	@RequestMapping(value = "/expression", method = RequestMethod.GET)
	public ModelAndView expression() {
		ModelAndView model = new ModelAndView("angular/expression");
		return model;
	}

	@RequestMapping(value = "/directive", method = RequestMethod.GET)
	public ModelAndView directive() {
		ModelAndView model = new ModelAndView("angular/directive");
		return model;
	}

	@RequestMapping(value = "/controller", method = RequestMethod.GET)
	public ModelAndView controller() {
		ModelAndView model = new ModelAndView("angular/controller");
		return model;
	}

	@RequestMapping(value = "/filter", method = RequestMethod.GET)
	public ModelAndView filter() {
		ModelAndView model = new ModelAndView("angular/filter");
		return model;
	}
}
