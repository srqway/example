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

	@RequestMapping(value = "/module/index", method = RequestMethod.GET)
	public String moduleIndex() {
		return "angular/module/index";
	}

	@RequestMapping(value = "/module/basic", method = RequestMethod.GET)
	public String moduleBasic() {
		return "angular/module/basic";
	}

	@RequestMapping(value = "/controller/index", method = RequestMethod.GET)
	public String controllerIndex() {
		return "angular/controller/index";
	}

	@RequestMapping(value = "/controller/basic", method = RequestMethod.GET)
	public String controllerBasic() {
		return "angular/controller/basic";
	}
	
//	private Collection<Data> generateList(int amount) {
//		List<Data> datas = new ArrayList<Data>(amount);
//		for (int i = 0; i < 3; ++i) {
//			Integer integerValue = i;
//			Float floatValue = Float.valueOf("" + i + "." + i);
//			Date dateValue = Calendar.getInstance().getTime();
//			Data data = new Data(integerValue, floatValue, dateValue);
//			datas.add(data);
//		}
//		return datas;
//	}
}
