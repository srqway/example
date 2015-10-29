package idv.hsiehpinghan.htmlexample.controller;

import idv.hsiehpinghan.htmlexample.criteria.DataTablesDeferLoadingCriteria;
import idv.hsiehpinghan.htmlexample.vo.Data;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/dataTables")
public class DataTablesController {
	private static final int TOTAL_SIZE = 100;

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
		ModelAndView model = new ModelAndView("dataTables/jqueryUi/index");
		model.addObject("list", list);
		return model;
	}

	@RequestMapping(value = "/setting/index", method = RequestMethod.GET)
	public ModelAndView settingIndex() {
		List<Data> list = getList();
		ModelAndView model = new ModelAndView("dataTables/setting/index");
		model.addObject("list", list);
		return model;
	}

	@RequestMapping(value = "/heightFitting/index", method = RequestMethod.GET)
	public ModelAndView heightFittingIndex() {
		List<Data> list = getList();
		ModelAndView model = new ModelAndView("dataTables/heightFitting/index");
		model.addObject("list", list);
		return model;
	}

	@RequestMapping(value = "/ajaxData/index", method = RequestMethod.GET)
	public ModelAndView ajaxDataIndex() {
		ModelAndView model = new ModelAndView("dataTables/ajaxData/index");
		return model;
	}

	@RequestMapping(value = "/ajaxData/fetchAll", method = RequestMethod.GET)
	public ModelAndView ajaxDataFetchAll() {
		ModelAndView model = new ModelAndView("dataTables/ajaxData/fetchAll");
		return model;
	}

	@ResponseBody
	@RequestMapping(value = "/ajaxData/ajaxJsonData", method = RequestMethod.GET, produces = { "application/json" })
	public Map<String, List<Data>> ajaxJsonData() {
		return generateJsonData();
	}

	@RequestMapping(value = "/ajaxData/deferLoading", method = RequestMethod.GET)
	public ModelAndView ajaxDataDeferLoading() {
		ModelAndView mv = new ModelAndView(
				"dataTables/ajaxData/deferLoading");
		mv.addObject("data", getList(0, 10));
		return mv;
	}

	@ResponseBody
	@RequestMapping(value = "/ajaxData/ajaxDeferLoadingJsonData", method = RequestMethod.GET, produces = { "application/json" })
	public Object ajaxDeferLoadingJsonData(
			DataTablesDeferLoadingCriteria criteria) {
		int draw = criteria.getDraw();
		int start = criteria.getStart();
		int length = criteria.getLength();
		return generateJsonData(draw, start, length);
	}

	private Map<String, Object> generateJsonData(int draw, int start, int length) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("draw", draw);
		map.put("recordsTotal", TOTAL_SIZE);
		map.put("recordsFiltered", TOTAL_SIZE);
		map.put("data", getList(start, length));
		return map;
	}

	private List<Data> getList(int start, int length) {
		List<Data> list = new ArrayList<Data>();
		for (int i = start, end = start + length; i < end; ++i) {
			Data vo = Data.generateData(i);
			list.add(vo);
		}
		return list;
	}

	private Map<String, List<Data>> generateJsonData() {
		Map<String, List<Data>> map = new HashMap<String, List<Data>>();
		map.put("data", getList());
		return map;
	}

	private List<Data> getList() {
		List<Data> list = new ArrayList<Data>();
		for (int i = 0; i < 100; ++i) {
			Data vo = Data.generateData(i);
			list.add(vo);
		}
		return list;
	}
}
