package kr.ed.haebeop.config;

import kr.ed.haebeop.service.NoticeService;
import kr.ed.haebeop.service.NoticeServiceImpl;
import kr.ed.haebeop.service.UserService;
import kr.ed.haebeop.service.UserServiceImpl;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@ComponentScan(basePackages = "kr.ed.haebeop")
public class ApplicationConfig {
    @Bean
    public NoticeService noticeService() { return new NoticeServiceImpl(); }

    @Bean
    public UserService userService() { return new UserServiceImpl(); }

}

