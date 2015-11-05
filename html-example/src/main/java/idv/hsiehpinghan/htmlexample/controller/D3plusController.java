package idv.hsiehpinghan.htmlexample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/d3plus")
public class D3plusController {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "d3plus/index";
	}

	@RequestMapping(value = "/treeMap", method = RequestMethod.GET)
	public String treeMap() {
		return "d3plus/treeMap";
	}
	
	// @ResponseBody
	// @RequestMapping(value = "/barChart/{size:.+}", method =
	// RequestMethod.GET)
	// public String barChartCsvData(@PathVariable("size") int size) {
	// return generateBarChartCsvData(size);
	// }

}
