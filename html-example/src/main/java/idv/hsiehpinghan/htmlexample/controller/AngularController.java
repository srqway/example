package idv.hsiehpinghan.htmlexample.controller;

import idv.hsiehpinghan.htmlexample.criteria.Criteria;
import idv.hsiehpinghan.htmlexample.vo.Data;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

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

	@RequestMapping(value = "/directive/a", method = RequestMethod.GET)
	public String directiveA() {
		return "angular/directive/a";
	}
	
	@RequestMapping(value = "/directive/form", method = RequestMethod.GET)
	public String directiveForm() {
		return "angular/directive/form";
	}
	
	@RequestMapping(value = "/form/index", method = RequestMethod.GET)
	public String formIndex() {
		return "angular/form/index";
	}

	@RequestMapping(value = "/form/basic", method = RequestMethod.GET)
	public ModelAndView formBasic(@ModelAttribute("criteria") Criteria criteria) {
		ModelAndView mv = new ModelAndView("angular/form/basic");
		mv.addObject("criteria", convertDataToString(criteria));
		return mv;
	}
	
	private String convertDataToString(Criteria criteria) {
		String result = "{}";
		ObjectMapper objectMapper = new ObjectMapper();
		if(criteria == null) {
			return result;
		}
		try {
			return objectMapper.writeValueAsString(criteria);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return result;
	}

//	@ResponseBody
//	@RequestMapping(value = "/form/basicSubmit", method = RequestMethod.GET)
//	public Data formBasicSubmit(@ModelAttribute("criteria") Criteria criteria) {
//		return criteria.getData();
//	}

}
