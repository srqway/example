package idv.hsiehpinghan.javadesignpatternexample.flyweightpattern.report.impl;

import idv.hsiehpinghan.javadesignpatternexample.flyweightpattern.report.ReportManager;

public class FinancialReportManager implements ReportManager {

	@Override
	public void printReport() {
		System.err.println("financial report.");
	}

}
