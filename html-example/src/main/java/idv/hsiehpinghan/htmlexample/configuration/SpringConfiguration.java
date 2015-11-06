package idv.hsiehpinghan.htmlexample.configuration;

import idv.hsiehpinghan.htmlexample.converter.TsvHttpMessageConverter;

import java.util.List;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

@Configuration
@ComponentScan(basePackages = { "idv.hsiehpinghan.htmlexample" })
public class SpringConfiguration extends WebMvcConfigurationSupport {
	@Bean
	public UrlBasedViewResolver setupViewResolver() {
		UrlBasedViewResolver resolver = new UrlBasedViewResolver();
		resolver.setPrefix("/WEB-INF/jsp/");
		resolver.setSuffix(".jsp");
		resolver.setViewClass(JstlView.class);
		return resolver;
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/index.html").addResourceLocations("/");
		registry.addResourceHandler("/image/**")
				.addResourceLocations("/image/");
		registry.addResourceHandler("/javascript/**").addResourceLocations(
				"/javascript/");
	}

	@Override
	public void configureMessageConverters(
			List<HttpMessageConverter<?>> converters) {
		converters.add(new TsvHttpMessageConverter());
		super.addDefaultHttpMessageConverters(converters);
	}
}
