package kr.ed.haebeop.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

//dispatcher-servlet.xml을 대신하는 ServletContext.java : kr.ed.haebeop.config
@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {"kr.ed.haebeop"})
public class ServletContext implements WebMvcConfigurer {
    @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        InternalResourceViewResolver bean = new InternalResourceViewResolver();
        bean.setViewClass(JstlView.class);
        bean.setPrefix("/WEB-INF/views/");
        bean.setSuffix(".jsp");
        registry.viewResolver(bean);
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
        registry.addResourceHandler("/admin/**").addResourceLocations("/WEB-INF/views/admin");
        registry.addResourceHandler("/ajax/**").addResourceLocations("/WEB-INF/views/ajax");
        registry.addResourceHandler("/api/**").addResourceLocations("/WEB-INF/views/api");
        registry.addResourceHandler("/board/**").addResourceLocations("/WEB-INF/views/board");
        registry.addResourceHandler("/calendar/**").addResourceLocations("/WEB-INF/views/calendar");
        registry.addResourceHandler("/check/**").addResourceLocations("/WEB-INF/views/check");
        registry.addResourceHandler("/fileupload/**").addResourceLocations("/WEB-INF/views/fileupload");
        registry.addResourceHandler("/free/**").addResourceLocations("/WEB-INF/views/free");
        registry.addResourceHandler("/guestbook/**").addResourceLocations("/WEB-INF/views/guestbook");
        registry.addResourceHandler("/lec/**").addResourceLocations("/WEB-INF/views/lec");
        registry.addResourceHandler("/user/**").addResourceLocations("/WEB-INF/views/user");
        registry.addResourceHandler("/notice/**").addResourceLocations("/WEB-INF/views/notice");
        registry.addResourceHandler("/qna/**").addResourceLocations("/WEB-INF/views/qna");
        registry.addResourceHandler("/reserv/**").addResourceLocations("/WEB-INF/views/reserv");
        registry.addResourceHandler("/test/**").addResourceLocations("/WEB-INF/views/test");
        registry.addResourceHandler("/util/**").addResourceLocations("/WEB-INF/views/util");
        registry.addResourceHandler("/contact/**").addResourceLocations("/WEB-INF/views/contact");

    }
}
