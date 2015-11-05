package idv.hsiehpinghan.htmlexample.controller;

import idv.hsiehpinghan.htmlexample.vo.TreeMapVo;

import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/d3plus")
public class D3plusController {
	private static Random random = new Random();
	private static final int ROW_SIZE = 5;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "d3plus/index";
	}

	@RequestMapping(value = "/treeMap", method = RequestMethod.GET)
	public String treeMap() {
		return "d3plus/treeMap";
	}

	@ResponseBody
	@RequestMapping(value = "/tsv", method = RequestMethod.GET)
	public TreeMapVo tsv() {
		return generateTsvVo();
	}

	@RequestMapping(value = "/rings", method = RequestMethod.GET)
	public String rings() {
		return "d3plus/rings";
	}

	private TreeMapVo generateTsvVo() {
		TreeMapVo vo = new TreeMapVo();
		buildTsvVoTitles(vo);
		buildTsvVoDatas(vo);
		return vo;
	}

	private void buildTsvVoTitles(TreeMapVo vo) {
		String[] titles = new String[] { "id", "size", "time" };
		vo.setTitles(titles);
	}

	private void buildTsvVoDatas(TreeMapVo vo) {
		Object[][] datas = new Object[ROW_SIZE][];
		for (int row = 0; row < ROW_SIZE; ++row) {
			String id = generateId(row);
			int size = generateSize();
			int time = generateTime(row);
			datas[row] = new Object[] { id, size, time };
		}
		vo.setDatas(datas);
	}

	private String generateId(int row) {
		return "id_" + row;
	}

	private int generateSize() {
		return random.nextInt(100);
	}

	private int generateTime(int row) {
		return 2015 + row;
	}
}
