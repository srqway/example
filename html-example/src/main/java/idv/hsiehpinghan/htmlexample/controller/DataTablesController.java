package idv.hsiehpinghan.htmlexample.controller;

import idv.hsiehpinghan.htmlexample.vo.Data;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/dataTables")
public class DataTablesController {

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "dataTables/index";
	}

	@RequestMapping(value = "/zeroConfiguration/index", method = RequestMethod.GET)
	public ModelAndView zeroConfigurationIndex() {
		List<Data> list = getList();
		ModelAndView model = new ModelAndView(
				"dataTables/zeroConfiguration/index");
		model.addObject("list", list);
		return model;
	}

	@RequestMapping(value = "/jqueryUi/index", method = RequestMethod.GET)
	public ModelAndView jqueryUiIndex() {
		List<Data> list = getList();
		ModelAndView model = new ModelAndView(
				"dataTables/jqueryUi/index");
		model.addObject("list", list);
		return model;
	}
	
	@RequestMapping(value = "/setting/index", method = RequestMethod.GET)
	public ModelAndView settingIndex() {
		List<Data> list = getList();
		ModelAndView model = new ModelAndView(
				"dataTables/setting/index");
		model.addObject("list", list);
		return model;
	}
	
	@RequestMapping(value = "/heightFitting/index", method = RequestMethod.GET)
	public ModelAndView heightFittingIndex() {
		List<Data> list = getList();
		ModelAndView model = new ModelAndView(
				"dataTables/heightFitting/index");
		model.addObject("list", list);
		return model;
	}
	
	private List<Data> getList() {
		List<Data> list = new ArrayList<Data>();
		for (int i = 0; i < 100; ++i) {
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
