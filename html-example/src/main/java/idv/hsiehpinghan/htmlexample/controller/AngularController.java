package idv.hsiehpinghan.htmlexample.controller;

import idv.hsiehpinghan.htmlexample.criteria.Criteria;
import idv.hsiehpinghan.htmlexample.vo.Data;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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

	@RequestMapping(value = "/directive/index", method = RequestMethod.GET)
	public String directiveIndex() {
		return "angular/directive/index";
	}

	@RequestMapping(value = "/directive/basic", method = RequestMethod.GET)
	public String directiveBasic() {
		return "angular/directive/basic";
	}

	@RequestMapping(value = "/directive/include/templateUrl", method = RequestMethod.GET)
	public String directiveIncludeTemplateUrl() {
		return "angular/directive/include/templateUrl";
	}

	@RequestMapping(value = "/directive/bind", method = RequestMethod.GET)
	public String directiveBind() {
		return "angular/directive/bind";
	}

	@RequestMapping(value = "/directive/event", method = RequestMethod.GET)
	public String directiveEvent() {
		return "angular/directive/event";
	}

	@RequestMapping(value = "/directive/form", method = RequestMethod.GET)
	public String directiveForm() {
		return "angular/directive/form";
	}

	@RequestMapping(value = "/directive/class", method = RequestMethod.GET)
	public String directiveClass() {
		return "angular/directive/class";
	}

	@RequestMapping(value = "/directive/include", method = RequestMethod.GET)
	public String directiveInclude() {
		return "angular/directive/include";
	}

	@RequestMapping(value = "/directive/include/{jspName}", method = RequestMethod.GET)
	public String directiveIncludeSub0(@PathVariable("jspName") String jspName) {
		return "angular/directive/include/" + jspName;
	}

	@RequestMapping(value = "/directive/model", method = RequestMethod.GET)
	public String directiveModel() {
		return "angular/directive/model";
	}

	@RequestMapping(value = "/directive/logic", method = RequestMethod.GET)
	public String directiveLogic() {
		return "angular/directive/logic";
	}

	@RequestMapping(value = "/form/index", method = RequestMethod.GET)
	public String formIndex() {
		return "angular/form/index";
	}

	@RequestMapping(value = "/form/basic", method = RequestMethod.GET)
	public String formBasic() {
		return "angular/form/basic";
	}

	@RequestMapping(value = "/form/formController", method = RequestMethod.GET)
	public String formFormController() {
		return "angular/form/formController";
	}

	@RequestMapping(value = "/service/index", method = RequestMethod.GET)
	public String serviceIndex() {
		return "angular/service/index";
	}

	@RequestMapping(value = "/service/http", method = RequestMethod.GET)
	public String serviceHttp() {
		return "angular/service/http";
	}

	@ResponseBody
	@RequestMapping(value = "/service/httpGet", method = RequestMethod.GET)
	public Data serviceHttpGet(@ModelAttribute("criteria") Criteria criteria) {
		return criteria.getData();
	}
}
