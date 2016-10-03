package idv.hsiehpinghan.javadesignpatternexample.flyweightpattern.report.factory;

import java.util.HashMap;
import java.util.Map;

import idv.hsiehpinghan.javadesignpatternexample.flyweightpattern.report.ReportManager;
import idv.hsiehpinghan.javadesignpatternexample.flyweightpattern.report.impl.EmployeeReportManager;
import idv.hsiehpinghan.javadesignpatternexample.flyweightpattern.report.impl.FinancialReportManager;

public class ReportManagerFactory {
	private Map<String, ReportManager> financialReportManagers = new HashMap<>();
	private Map<String, ReportManager> employeeReportManagers = new HashMap<>();

	public ReportManager getFinancialReportManager(String tenantId) {
		ReportManager reportManager = financialReportManagers.get(tenantId);
		if (reportManager == null) {
			reportManager = new FinancialReportManager();
			financialReportManagers.put(tenantId, reportManager);
		}
		return reportManager;
	}

	public ReportManager getEmployeeReportManager(String tenantId) {
		ReportManager reportManager = employeeReportManagers.get(tenantId);
		if (reportManager == null) {
			reportManager = new EmployeeReportManager();
			employeeReportManagers.put(tenantId, reportManager);
		}
		return reportManager;
	}
}
