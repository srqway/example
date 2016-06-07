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
		model.addObject("parameter", "form - parameter1 : " + request.getParameter("parameter1") + "; parameter2 : "
				+ request.getParameter("parameter2"));
		return model;
	}

	@RequestMapping(value = "/dom/overrideForm", method = RequestMethod.POST)
	public ModelAndView domOverrideForm(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("html5/dom/parameter");
		model.addObject("parameter", "overrideForm - parameter1 : " + request.getParameter("parameter1")
				+ "; parameter2 : " + request.getParameter("parameter2"));
		return model;
	}

	@RequestMapping(value = "/iframe/index", method = RequestMethod.GET)
	public String iframeIndex() {
		return "html5/iframe/index";
	}

	@RequestMapping(value = "/iframe/iframeWithEcharts", method = RequestMethod.GET)
	public String iframeWithEcharts() {
		return "html5/iframe/iframeWithEcharts";
	}

	@RequestMapping(value = "/iframe/interaction", method = RequestMethod.GET)
	public String interaction() {
		return "html5/iframe/interaction";
	}

	@RequestMapping(value = "/iframe/interactionIframe", method = RequestMethod.GET)
	public String interactionIframe() {
		return "html5/iframe/interactionIframe";
	}

	@RequestMapping(value = "/iframe/onload", method = RequestMethod.GET)
	public String onload() {
		return "html5/iframe/onload";
	}

	@RequestMapping(value = "/iframe/onloadIframe", method = RequestMethod.GET)
	public String onloadIframe() {
		return "html5/iframe/onloadIframe";
	}

	@RequestMapping(value = "/svg/index", method = RequestMethod.GET)
	public String svgIndex() {
		return "html5/svg/index";
	}

	@RequestMapping(value = "/svg/basicShape", method = RequestMethod.GET)
	public String basicShape() {
		return "html5/svg/basicShape";
	}

	@RequestMapping(value = "/svg/path", method = RequestMethod.GET)
	public String path() {
		return "html5/svg/path";
	}

	@RequestMapping(value = "/svg/text", method = RequestMethod.GET)
	public String text() {
		return "html5/svg/text";
	}

	@RequestMapping(value = "/svg/stroke", method = RequestMethod.GET)
	public String stroke() {
		return "html5/svg/stroke";
	}

	@RequestMapping(value = "/file/index", method = RequestMethod.GET)
	public String file() {
		return "html5/file/index";
	}

	@RequestMapping(value = "/file/selectFiles", method = RequestMethod.GET)
	public String selectFiles() {
		return "html5/file/selectFiles";
	}

	@RequestMapping(value = "/file/readTextFile", method = RequestMethod.GET)
	public String readTextFile() {
		return "html5/file/readTextFile";
	}
}
