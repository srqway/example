package idv.hsiehpinghan.htmlexample.initializer;

import idv.hsiehpinghan.htmlexample.configuration.SpringConfiguration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class WebInitializer implements WebApplicationInitializer {

    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
    	AnnotationConfigWebApplicationContext applicationContext = new AnnotationConfigWebApplicationContext();
    	applicationContext.setServletContext(servletContext);
    	applicationContext.register(SpringConfiguration.class);
    	addServlets(servletContext, applicationContext);
//        servletContext.addListener(new ContextLoaderListener(context));
//        ServletRegistration.Dynamic dispatcher = servletContext.addServlet("dispatcherServlet", new DispatcherServlet(context));
//        dispatcher.setLoadOnStartup(1);
//        dispatcher.addMapping("/");
    }
    
//    @Override
//    public void onStartup(ServletContext servletContext) throws ServletException {        
//        AnnotationConfigWebApplicationContext ctx = new AnnotationConfigWebApplicationContext();  
//        ctx.register(Config.class);  
//        ctx.setServletContext(servletContext);    
//        Dynamic servlet = servletContext.addServlet("dispatcher", new DispatcherServlet(ctx));  
//        servlet.addMapping("/");  
//        servlet.setLoadOnStartup(1);
//    }

    private void addServlets(ServletContext servletContext, AnnotationConfigWebApplicationContext applicationContext) {
    	ServletRegistration.Dynamic dispatcherServlet = servletContext.addServlet("dispatcherServlet", new DispatcherServlet(applicationContext));
    	dispatcherServlet.addMapping("/");
    	dispatcherServlet.setLoadOnStartup(1);
    }
    
    private void addListener(ServletContext servletContext, AnnotationConfigWebApplicationContext applicationContext) {
        servletContext.addListener(new ContextLoaderListener(applicationContext));
    }
}
