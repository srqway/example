package idv.hsiehpinghan.javadesignpatternexample.flyweightpattern.report.impl;

import idv.hsiehpinghan.javadesignpatternexample.flyweightpattern.report.ReportManager;

public class EmployeeReportManager implements ReportManager {

	@Override
	public void printReport() {
		System.err.println("employee report.");
	}

}
