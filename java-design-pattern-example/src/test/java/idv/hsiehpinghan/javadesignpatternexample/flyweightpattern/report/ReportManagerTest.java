package idv.hsiehpinghan.javadesignpatternexample.flyweightpattern.report;

import org.testng.annotations.Test;

import idv.hsiehpinghan.javadesignpatternexample.flyweightpattern.report.factory.ReportManagerFactory;

public class ReportManagerTest {

	@Test
	public void printReport() {
		ReportManagerFactory factory = new ReportManagerFactory();
		ReportManager financialReportManager = factory.getFinancialReportManager("financial");
		financialReportManager.printReport();
		ReportManager employeeReportManager = factory.getEmployeeReportManager("employee");
		employeeReportManager.printReport();
	}
}
