package idv.hsiehpinghan.htmlexample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/fuelUx")
public class FuelUxController {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "fuelUx/index";
	}

	@RequestMapping(value = "/checkbox/index", method = RequestMethod.GET)
	public String checkboxIndex() {
		return "fuelUx/checkbox/index";
	}

}
