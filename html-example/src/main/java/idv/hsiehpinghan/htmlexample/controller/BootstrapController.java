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
@RequestMapping(value = "/bootstrap")
public class BootstrapController {
	private final int SIZE = 30;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "bootstrap/index";
	}

	@RequestMapping(value = "/nonResponsive/index", method = RequestMethod.GET)
	public String nonResponsive() {
		return "bootstrap/nonResponsive/index";
	}

	@RequestMapping(value = "/navbar/index", method = RequestMethod.GET)
	public String navbarIndex() {
		return "bootstrap/navbar/index";
	}

	@RequestMapping(value = "/navbar/base", method = RequestMethod.GET)
	public String navbarBase() {
		return "bootstrap/navbar/base";
	}

	@RequestMapping(value = "/navbar/hide", method = RequestMethod.GET)
	public String navbarHide() {
		return "bootstrap/navbar/hide";
	}

	@RequestMapping(value = "/navbar/top", method = RequestMethod.GET)
	public String navbarTop() {
		return "bootstrap/navbar/top";
	}

	@RequestMapping(value = "/tabs/index", method = RequestMethod.GET)
	public String tabsIndex() {
		return "bootstrap/tabs/index";
	}

	@RequestMapping(value = "/listGroup/index", method = RequestMethod.GET)
	public String listGroupIndex() {
		return "bootstrap/listGroup/index";
	}

	@RequestMapping(value = "/inputGroup/index", method = RequestMethod.GET)
	public String inputGroupIndex() {
		return "bootstrap/inputGroup/index";
	}

	@RequestMapping(value = "/panel/index", method = RequestMethod.GET)
	public String panelIndex() {
		return "bootstrap/panel/index";
	}

	@RequestMapping(value = "/table/index", method = RequestMethod.GET)
	public String tableIndex() {
		return "bootstrap/table/index";
	}

	@RequestMapping(value = "/table/basic", method = RequestMethod.GET)
	public String tableBasic() {
		return "bootstrap/table/basic";
	}

	@RequestMapping(value = "/table/scrollableTable", method = RequestMethod.GET)
	public ModelAndView tableScrollableTable() {
		ModelAndView mv = new ModelAndView("bootstrap/table/scrollableTable");
		mv.addObject("datas", generateDatas(SIZE));
		return mv;
	}

	@RequestMapping(value = "/form/index", method = RequestMethod.GET)
	public String formIndex() {
		return "bootstrap/form/index";
	}

	@RequestMapping(value = "/pagination/index", method = RequestMethod.GET)
	public String paginationIndex() {
		return "bootstrap/pagination/index";
	}

	@RequestMapping(value = "/image/index", method = RequestMethod.GET)
	public String imageIndex() {
		return "bootstrap/image/index";
	}

	@RequestMapping(value = "/text/index", method = RequestMethod.GET)
	public String textIndex() {
		return "bootstrap/text/index";
	}

	@RequestMapping(value = "/buttonGroup/index", method = RequestMethod.GET)
	public String buttonGroup() {
		return "bootstrap/buttonGroup/index";
	}

	@RequestMapping(value = "/button/index", method = RequestMethod.GET)
	public String button() {
		return "bootstrap/button/index";
	}

	@RequestMapping(value = "/badge/index", method = RequestMethod.GET)
	public String badge() {
		return "bootstrap/badge/index";
	}
	
	@RequestMapping(value = "/label/index", method = RequestMethod.GET)
	public String label() {
		return "bootstrap/label/index";
	}
	
	@RequestMapping(value = "/progressBar/index", method = RequestMethod.GET)
	public String progressBar() {
		return "bootstrap/progressBar/index";
	}
	
	private List<Data> generateDatas(int size) {
		List<Data> datas = new ArrayList<Data>(size);
		for (int i = 0; i < size; ++i) {
			datas.add(generateData(i));
		}
		return datas;
	}

	private Data generateData(int i) {
		Integer integerValue = Integer.valueOf(i);
		Float floatValue = Float.valueOf(i + "." + i);
		Date date = Calendar.getInstance().getTime();
		Data data = new Data(integerValue, floatValue, date);
		return data;
	}
}
