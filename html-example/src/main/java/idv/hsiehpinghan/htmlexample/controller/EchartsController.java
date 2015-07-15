package idv.hsiehpinghan.htmlexample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/echarts")
public class EchartsController {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "echarts/index";
	}

	@RequestMapping(value = "/wordCloud/index", method = RequestMethod.GET)
	public ModelAndView wordCloudIndex() {
		ModelAndView model = new ModelAndView("echarts/wordCloud/index");
		return model;
	}

	@RequestMapping(value = "/wordCloud/wordCloud", method = RequestMethod.GET)
	public ModelAndView wordCloud() {
		ModelAndView model = new ModelAndView("echarts/wordCloud/wordCloud");
		return model;
	}
	
	@RequestMapping(value = "/line/index", method = RequestMethod.GET)
	public ModelAndView line() {
		ModelAndView model = new ModelAndView("echarts/line/index");
		return model;
	}

	@RequestMapping(value = "/line/basicArea", method = RequestMethod.GET)
	public ModelAndView basicArea() {
		ModelAndView model = new ModelAndView("echarts/line/basicArea");
		return model;
	}
	
	@RequestMapping(value = "/maps/index", method = RequestMethod.GET)
	public ModelAndView maps() {
		ModelAndView model = new ModelAndView("echarts/maps/index");
		return model;
	}
	
	@RequestMapping(value = "/maps/taiwanCounty", method = RequestMethod.GET)
	public ModelAndView taiwanCounty() {
		ModelAndView model = new ModelAndView("echarts/maps/taiwanCounty");
		return model;
	}
}
