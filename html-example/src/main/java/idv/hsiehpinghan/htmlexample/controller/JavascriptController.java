package idv.hsiehpinghan.htmlexample.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/javascript")
public class JavascriptController {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "javascript/index";
	}

	@RequestMapping(value = "/elementByXpath", method = RequestMethod.GET)
	public String elementByXpath() {
		return "javascript/elementByXpath";
	}

	@RequestMapping(value = "/xpathOfElement", method = RequestMethod.GET)
	public String xpathOfElement() {
		return "javascript/xpathOfElement";
	}

}
