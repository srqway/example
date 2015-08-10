package idv.hsiehpinghan.htmlexample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/datepicker")
public class DatepickerController {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "datepicker/index";
	}

	@RequestMapping(value = "/simpleCalendar", method = RequestMethod.GET)
	public String simpleCalendar() {
		return "datepicker/simpleCalendar";
	}

	@RequestMapping(value = "/multiCalendar", method = RequestMethod.GET)
	public String multiCalendar() {
		return "datepicker/multiCalendar";
	}

	@RequestMapping(value = "/calendarWithInput", method = RequestMethod.GET)
	public String calendarWithInput() {
		return "datepicker/calendarWithInput";
	}

	@RequestMapping(value = "/calendarWithCustomWidget", method = RequestMethod.GET)
	public String calendarWithCustomWidget() {
		return "datepicker/calendarWithCustomWidget";
	}

	@RequestMapping(value = "/calendarWithCustomWidget1", method = RequestMethod.GET)
	public String calendarWithCustomWidget1() {
		return "datepicker/calendarWithCustomWidget1";
	}
}
