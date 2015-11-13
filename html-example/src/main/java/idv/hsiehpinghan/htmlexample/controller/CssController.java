package idv.hsiehpinghan.htmlexample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/css")
public class CssController {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "css/index";
	}

	@RequestMapping(value = "/multilineOverflow", method = RequestMethod.GET)
	public String cssMultilineOverflow() {
		return "css/multilineOverflow";
	}

	@RequestMapping(value = "/background", method = RequestMethod.GET)
	public String cssBackground() {
		return "css/background";
	}

	@RequestMapping(value = "/text", method = RequestMethod.GET)
	public String cssText() {
		return "css/text";
	}

	@RequestMapping(value = "/font", method = RequestMethod.GET)
	public String cssFont() {
		return "css/font";
	}

	@RequestMapping(value = "/table", method = RequestMethod.GET)
	public String cssTable() {
		return "css/table";
	}

	@RequestMapping(value = "/boxModel", method = RequestMethod.GET)
	public String boxModel() {
		return "css/boxModel";
	}

	@RequestMapping(value = "/position", method = RequestMethod.GET)
	public String position() {
		return "css/position";
	}

	@RequestMapping(value = "/float", method = RequestMethod.GET)
	public String _float() {
		return "css/float";
	}

	@RequestMapping(value = "/inlineBlock", method = RequestMethod.GET)
	public String inlineBlock() {
		return "css/inlineBlock";
	}

	@RequestMapping(value = "/imageSprite", method = RequestMethod.GET)
	public String imageSprite() {
		return "css/imageSprite";
	}

	@RequestMapping(value = "/roundedCorner", method = RequestMethod.GET)
	public String roundedCorner() {
		return "css/roundedCorner";
	}

	@RequestMapping(value = "/borderImage", method = RequestMethod.GET)
	public String borderImage() {
		return "css/borderImage";
	}

	@RequestMapping(value = "/color", method = RequestMethod.GET)
	public String color() {
		return "css/color";
	}

	@RequestMapping(value = "/gradient", method = RequestMethod.GET)
	public String gradient() {
		return "css/gradient";
	}

	@RequestMapping(value = "/boxShadow", method = RequestMethod.GET)
	public String boxShadow() {
		return "css/boxShadow";
	}

	@RequestMapping(value = "/transform2d", method = RequestMethod.GET)
	public String transform2d() {
		return "css/transform2d";
	}

	@RequestMapping(value = "/transform3d", method = RequestMethod.GET)
	public String transform3d() {
		return "css/transform3d";
	}

	@RequestMapping(value = "/transition", method = RequestMethod.GET)
	public String transition() {
		return "css/transition";
	}

	@RequestMapping(value = "/animation", method = RequestMethod.GET)
	public String animation() {
		return "css/animation";
	}

	@RequestMapping(value = "/multipleColumn", method = RequestMethod.GET)
	public String multipleColumn() {
		return "css/multipleColumn";
	}

	@RequestMapping(value = "/boxSizing", method = RequestMethod.GET)
	public String boxSizing() {
		return "css/boxSizing";
	}

	@RequestMapping(value = "/flexibleBox", method = RequestMethod.GET)
	public String flexibleBox() {
		return "css/flexibleBox";
	}

	@RequestMapping(value = "/media", method = RequestMethod.GET)
	public String media() {
		return "css/media";
	}

	@RequestMapping(value = "/viewport", method = RequestMethod.GET)
	public String viewport() {
		return "css/viewport";
	}
	
	@RequestMapping(value = "/gridView", method = RequestMethod.GET)
	public String gridView() {
		return "css/gridView";
	}
}
