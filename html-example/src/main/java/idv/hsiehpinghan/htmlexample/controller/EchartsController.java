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

	@RequestMapping(value = "/line/basicLine", method = RequestMethod.GET)
	public ModelAndView basicLine() {
		ModelAndView model = new ModelAndView("echarts/line/basicLine");
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

	@RequestMapping(value = "/force/index", method = RequestMethod.GET)
	public ModelAndView force() {
		ModelAndView model = new ModelAndView("echarts/force/index");
		return model;
	}

	@RequestMapping(value = "/force/simpleTopology", method = RequestMethod.GET)
	public ModelAndView simpleTopology() {
		ModelAndView model = new ModelAndView("echarts/force/simpleTopology");
		return model;
	}

	@RequestMapping(value = "/bar/index", method = RequestMethod.GET)
	public ModelAndView bar() {
		ModelAndView model = new ModelAndView("echarts/bar/index");
		return model;
	}

	@RequestMapping(value = "/bar/basicColumn", method = RequestMethod.GET)
	public ModelAndView basicColumn() {
		ModelAndView model = new ModelAndView("echarts/bar/basicColumn");
		return model;
	}

	@RequestMapping(value = "/bar/rainbowBar", method = RequestMethod.GET)
	public ModelAndView rainbowBar() {
		ModelAndView model = new ModelAndView("echarts/bar/rainbowBar");
		return model;
	}

	@RequestMapping(value = "/treeMap/index", method = RequestMethod.GET)
	public ModelAndView treeMap() {
		ModelAndView model = new ModelAndView("echarts/treeMap/index");
		return model;
	}

	@RequestMapping(value = "/treeMap/basicTreeMap", method = RequestMethod.GET)
	public ModelAndView basicTreeMap() {
		ModelAndView model = new ModelAndView("echarts/treeMap/basicTreeMap");
		return model;
	}

}
