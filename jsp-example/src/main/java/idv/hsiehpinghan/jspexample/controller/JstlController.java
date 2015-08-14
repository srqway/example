package idv.hsiehpinghan.jspexample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/jstl")
public class JstlController {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "jstl/index";
	}

	@RequestMapping(value = "/cUrl", method = RequestMethod.GET)
	public String cUrl() {
		return "jstl/cUrl";
	}

	@RequestMapping(value = "/fmtFormatNumber", method = RequestMethod.GET)
	public ModelAndView fmtFormatNumber() {
		ModelAndView mv = new ModelAndView("jstl/fmtFormatNumber");
		mv.addObject("_double", 123.45);
		return mv;
	}
}
