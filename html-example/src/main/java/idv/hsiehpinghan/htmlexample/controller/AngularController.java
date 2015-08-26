package idv.hsiehpinghan.htmlexample.controller;

import idv.hsiehpinghan.htmlexample.vo.Data;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/angular")
public class AngularController {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "angular/index";
	}

	@RequestMapping(value = "/expression", method = RequestMethod.GET)
	public ModelAndView expression() {
		ModelAndView model = new ModelAndView("angular/expression");
		return model;
	}

	@RequestMapping(value = "/directive", method = RequestMethod.GET)
	public ModelAndView directive() {
		ModelAndView model = new ModelAndView("angular/directive");
		return model;
	}

	@RequestMapping(value = "/controller", method = RequestMethod.GET)
	public ModelAndView controller() {
		ModelAndView model = new ModelAndView("angular/controller");
		return model;
	}

	@RequestMapping(value = "/filter", method = RequestMethod.GET)
	public ModelAndView filter() {
		ModelAndView model = new ModelAndView("angular/filter");
		return model;
	}

	@RequestMapping(value = "/http", method = RequestMethod.GET)
	public ModelAndView http() {
		ModelAndView model = new ModelAndView("angular/http");
		return model;
	}

	@ResponseBody
	@RequestMapping(value = "/httpJson", method = RequestMethod.GET, produces = { "application/json" })
	public Collection<Data> httpJson() {
		return generateList();
	}

	private Collection<Data> generateList() {
		return generateList(3);
	}

	private Collection<Data> generateList(int amount) {
		List<Data> datas = new ArrayList<Data>(amount);
		for (int i = 0; i < 3; ++i) {
			Integer integerValue = i;
			Float floatValue = Float.valueOf("" + i + "." + i);
			Date dateValue = Calendar.getInstance().getTime();
			Data data = new Data(integerValue, floatValue, dateValue);
			datas.add(data);
		}
		return datas;
	}
}
