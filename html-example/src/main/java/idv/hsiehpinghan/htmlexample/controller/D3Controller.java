package idv.hsiehpinghan.htmlexample.controller;

import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/d3")
public class D3Controller {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "d3/index";
	}

	@RequestMapping(value = "/basic", method = RequestMethod.GET)
	public ModelAndView basic() {
		ModelAndView model = new ModelAndView("d3/basic");
		return model;
	}

	@RequestMapping(value = "/selections", method = RequestMethod.GET)
	public ModelAndView selections() {
		ModelAndView model = new ModelAndView("d3/selections");
		return model;
	}
	
//	@RequestMapping(value = "/barChart", method = RequestMethod.GET)
//	public ModelAndView barChart() {
//		ModelAndView model = new ModelAndView("d3/barChart");
//		return model;
//	}
//
//	@ResponseBody
//	@RequestMapping(value = "/barChart/{size:.+}", method = RequestMethod.GET)
//	public String barChartCsvData(@PathVariable("size") int size) {
//		return generateBarChartCsvData(size);
//	}
//
//	@RequestMapping(value = "/scatterPlot", method = RequestMethod.GET)
//	public ModelAndView scatterPlot() {
//		ModelAndView model = new ModelAndView("d3/scatterPlot");
//		return model;
//	}
//	
//	@ResponseBody
//	@RequestMapping(value = "/scatterPlot/{size:.+}", method = RequestMethod.GET)
//	public String scatterPlotCsvData(@PathVariable("size") int size) {
//		return generateScatterPlotCsvData(size);
//	}
//	
//	private String generateBarChartCsvData(int size) {
//		Random random = new Random();
//		random.setSeed(0);
//		StringBuilder sb = new StringBuilder();
//		sb.append("name,value");
//		for (int i = 0; i < size; ++i) {
//			sb.append("\n");
//			sb.append("item_" + i);
//			sb.append(",");
//			sb.append(random.nextInt(100));
//		}
//		return sb.toString();
//	}
//	
//	private String generateScatterPlotCsvData(int size) {
//		Random random = new Random();
//		random.setSeed(0);
//		StringBuilder sb = new StringBuilder();
//		sb.append("name,x,y,value");
//		for (int i = 0; i < size; ++i) {
//			sb.append("\n");
//			sb.append("item_" + i);
//			sb.append(",");
//			sb.append(random.nextInt(500));
//			sb.append(",");
//			sb.append(random.nextInt(500));
//			sb.append(",");
//			sb.append(random.nextInt(100));
//		}
//		return sb.toString();
//	}
}
