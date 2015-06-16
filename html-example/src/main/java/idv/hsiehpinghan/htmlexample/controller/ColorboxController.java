package idv.hsiehpinghan.htmlexample.controller;

import idv.hsiehpinghan.htmlexample.vo.Data;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/colorbox")
public class ColorboxController {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView index() {
		List<Data> list = getList();
		ModelAndView model = new ModelAndView("colorbox/index");
		model.addObject("list", list);
		return model;
	}

	@RequestMapping(value = "/ajax", method = RequestMethod.GET)
	public @ResponseBody String ajax() {
		return "This is ajax";
	}
	
	private List<Data> getList() {
		List<Data> list = new ArrayList<Data>();
		for (int i = 0; i < 10; ++i) {
			Integer integerValue = i;
			Float floatValue = Float.valueOf(String.valueOf(i) + "."
					+ String.valueOf(i));
			Date date = Calendar.getInstance().getTime();
			Data vo = new Data(integerValue, floatValue, date);
			list.add(vo);
		}
		return list;
	}
}
