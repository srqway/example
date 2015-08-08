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

	@RequestMapping(value = "/barChart", method = RequestMethod.GET)
	public ModelAndView barChart() {
		ModelAndView model = new ModelAndView("d3/barChart");
		return model;
	}

	@ResponseBody
	@RequestMapping(value = "/barChart/{size:.+}", method = RequestMethod.GET)
	public String barChartCsvData(@PathVariable("size") int size) {
		return generateRandomCsv(size);
	}

	private String generateRandomCsv(int size) {
		Random random = new Random();
		random.setSeed(0);
		StringBuilder sb = new StringBuilder();
		sb.append("column_0,column_1");
		for (int i = 0; i < size; ++i) {
			sb.append("\n");
			sb.append("item_" + i);
			sb.append(",");
			sb.append(random.nextInt(100));
		}
		return sb.toString();
	}
}
