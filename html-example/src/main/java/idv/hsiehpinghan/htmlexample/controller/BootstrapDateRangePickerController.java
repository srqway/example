package idv.hsiehpinghan.htmlexample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/bootstrapDateRangePicker")
public class BootstrapDateRangePickerController {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "bootstrapDateRangePicker/index";
	}
}
