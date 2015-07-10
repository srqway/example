package idv.hsiehpinghan.htmlexample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/zrender")
public class ZrenderController {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "zrender/index";
	}

	@RequestMapping(value = "/circle", method = RequestMethod.GET)
	public String circle() {
		return "zrender/circle";
	}

	@RequestMapping(value = "/ellipse", method = RequestMethod.GET)
	public String ellipse() {
		return "zrender/ellipse";
	}

	@RequestMapping(value = "/sector", method = RequestMethod.GET)
	public String sector() {
		return "zrender/sector";
	}

	@RequestMapping(value = "/ring", method = RequestMethod.GET)
	public String ring() {
		return "zrender/ring";
	}

	@RequestMapping(value = "/rectangle", method = RequestMethod.GET)
	public String rectangle() {
		return "zrender/rectangle";
	}

	@RequestMapping(value = "/polygon", method = RequestMethod.GET)
	public String polygon() {
		return "zrender/polygon";
	}

	@RequestMapping(value = "/isogon", method = RequestMethod.GET)
	public String isogon() {
		return "zrender/isogon";
	}

	@RequestMapping(value = "/star", method = RequestMethod.GET)
	public String star() {
		return "zrender/star";
	}

	@RequestMapping(value = "/path", method = RequestMethod.GET)
	public String path() {
		return "zrender/path";
	}

	@RequestMapping(value = "/heart", method = RequestMethod.GET)
	public String heart() {
		return "zrender/heart";
	}

	@RequestMapping(value = "/droplet", method = RequestMethod.GET)
	public String droplet() {
		return "zrender/droplet";
	}

	@RequestMapping(value = "/line", method = RequestMethod.GET)
	public String line() {
		return "zrender/line";
	}

	@RequestMapping(value = "/polyline", method = RequestMethod.GET)
	public String polyline() {
		return "zrender/polyline";
	}

	@RequestMapping(value = "/bezierCurve", method = RequestMethod.GET)
	public String bezierCurve() {
		return "zrender/bezierCurve";
	}

	@RequestMapping(value = "/rose", method = RequestMethod.GET)
	public String rose() {
		return "zrender/rose";
	}

	@RequestMapping(value = "/trochoid", method = RequestMethod.GET)
	public String trochoid() {
		return "zrender/trochoid";
	}

	@RequestMapping(value = "/text", method = RequestMethod.GET)
	public String text() {
		return "zrender/text";
	}

	@RequestMapping(value = "/image", method = RequestMethod.GET)
	public String image() {
		return "zrender/image";
	}
}
