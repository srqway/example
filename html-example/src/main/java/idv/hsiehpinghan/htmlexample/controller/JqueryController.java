package idv.hsiehpinghan.htmlexample.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/jquery")
public class JqueryController {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "jquery/index";
	}

	@RequestMapping(value = "/dynamicFormInput", method = RequestMethod.GET)
	public ModelAndView dynamicFormInput(HttpServletRequest httpServletRequest) {
		ModelAndView model = new ModelAndView("jquery/dynamicFormInput");
		String parameter = httpServletRequest.getParameter("parameter");
		model.addObject("parameter", parameter);
		return model;
	}

	@RequestMapping(value = "/ajax", method = RequestMethod.GET)
	public String ajax() {
		return "jquery/ajax";
	}

	@RequestMapping(value = "/ajaxGetWithBootstrap", method = RequestMethod.GET)
	public ModelAndView ajaxGetWithBootstrap(
			HttpServletRequest httpServletRequest)
			throws UnsupportedEncodingException {
		ModelAndView model = new ModelAndView("jquery/ajaxWithBootstrap");
		String chinese = convertIso88591ToUtf8(httpServletRequest
				.getParameter("chinese"));
		model.addObject("chinese", chinese);
		return model;
	}

	@RequestMapping(value = "/ajaxPostWithBootstrap", method = RequestMethod.POST)
	public ModelAndView ajaxPostWithBootstrap(
			HttpServletRequest httpServletRequest)
			throws UnsupportedEncodingException {
		ModelAndView model = new ModelAndView("jquery/ajaxWithBootstrap");
		String chinese = httpServletRequest.getParameter("chinese");
		model.addObject("chinese", chinese);
		return model;
	}

	private String convertIso88591ToUtf8(String chinese)
			throws UnsupportedEncodingException {
		return new String(chinese.getBytes("ISO-8859-1"), "UTF-8");
	}
}
