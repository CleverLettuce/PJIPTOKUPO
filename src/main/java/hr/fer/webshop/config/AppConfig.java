package hr.fer.webshop.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "hr.fer.webshop")
public class AppConfig extends WebMvcConfigurerAdapter {

    private static final String FORWARD_2_INDEX_HTML = "forward:/index.html";

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/**").addResourceLocations("/resources/");
    }
    
    @Bean
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setPrefix("/WEB-INF/views");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}

    @Bean
    public WebMvcConfigurerAdapter forwardToIndex() {
        return new WebMvcConfigurerAdapter() {
            @Override
            public void addViewControllers(ViewControllerRegistry registry) {
                registry.addViewController("/").setViewName(FORWARD_2_INDEX_HTML);
                registry.addViewController("/home").setViewName(FORWARD_2_INDEX_HTML);
                registry.addViewController("/product").setViewName(FORWARD_2_INDEX_HTML);
                registry.addViewController("/productinfo/**").setViewName(FORWARD_2_INDEX_HTML);
                registry.addViewController("/cart/**").setViewName(FORWARD_2_INDEX_HTML);
                registry.addViewController("/userinfo/**").setViewName(FORWARD_2_INDEX_HTML);
                registry.addViewController("/signin").setViewName(FORWARD_2_INDEX_HTML);
                registry.addViewController("/login").setViewName("/login");;
            }
        };
    }

}
