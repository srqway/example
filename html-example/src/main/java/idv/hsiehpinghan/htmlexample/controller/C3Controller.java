package idv.hsiehpinghan.htmlexample.controller;

import idv.hsiehpinghan.htmlexample.vo.TimeseriesData;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/c3")
public class C3Controller {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "c3/index";
	}

	@RequestMapping(value = "/timeseries/index", method = RequestMethod.GET)
	public ModelAndView  navbarIndex() {
		List<TimeseriesData> list = getList();
		ModelAndView model = new ModelAndView("c3/timeseries/index");
		model.addObject("list", list);
		return model;
	}
	
	private List<TimeseriesData> getList() {
		List<TimeseriesData> list = new ArrayList<TimeseriesData>();
		boolean sign = true;
		Integer tmpInt = Integer.valueOf(0);
		Float tmpFloat = Float.valueOf(0f);
		for(int i = 1; i < 10; ++i) {
			Calendar calendar = Calendar.getInstance();
			calendar.add(Calendar.DAY_OF_MONTH, i);
			Date date = calendar.getTime();
			Integer integerValue;
			Float floatValue;
			if(sign == true) {
				integerValue = i + tmpInt;
				floatValue = Float.valueOf(String.valueOf(i) + "." + String.valueOf(i)) - tmpFloat;
			} else {
				integerValue = i - tmpInt;
				floatValue = Float.valueOf(String.valueOf(i) + "." + String.valueOf(i)) + tmpFloat;
			}
			sign = !sign;
			tmpInt = integerValue;
			tmpFloat = floatValue;
			TimeseriesData vo = new TimeseriesData(date, integerValue, floatValue);
			list.add(vo);
		}
		return list;
	}
}
