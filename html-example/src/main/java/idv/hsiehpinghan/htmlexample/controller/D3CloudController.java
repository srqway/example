package idv.hsiehpinghan.htmlexample.controller;

import idv.hsiehpinghan.htmlexample.vo.TreeMapVo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/d3cloud")
public class D3CloudController {
	private static int[] sizes = new int[] { 9, 8, 8, 7, 6, 6, 6, 5, 5, 5, 5,
			4, 4, 4, 3, 3, 3, 3, 2, 2, 1, 1 };
	private static int rowSize = sizes.length;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "d3cloud/index";
	}

	@ResponseBody
	@RequestMapping(value = "/tsv", method = RequestMethod.GET)
	public TreeMapVo tsv() {
		return generateTsvVo();
	}

	private TreeMapVo generateTsvVo() {
		TreeMapVo vo = new TreeMapVo();
		buildTsvVoTitles(vo);
		buildTsvVoDatas(vo);
		return vo;
	}

	private void buildTsvVoTitles(TreeMapVo vo) {
		String[] titles = new String[] { "word", "size" };
		vo.setTitles(titles);
	}

	private void buildTsvVoDatas(TreeMapVo vo) {
		Object[][] datas = new Object[rowSize][];
		for (int row = 0; row < rowSize; ++row) {
			String word = generateWord(row);
			int size = generateSize(row);
			datas[row] = new Object[] { word, size };
		}
		vo.setDatas(datas);
	}

	private String generateWord(int row) {
		return "測試_" + sizes[row];
	}

	private int generateSize(int row) {
		return sizes[row];
	}

}
