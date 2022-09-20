package com.testarmy.app;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.DispatcherServlet;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

public class SpringApplication implements WebApplicationInitializer {
    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        //tworzenie kontektu Spring (kontekts odpowiada za tworzenie i zarzÄ…dzanie bean )
        AnnotationConfigWebApplicationContext context =
                new AnnotationConfigWebApplicationContext();
        //ten kontekts jest konfigurowany za pomocÄ… klasy
        //scan - szuka klasy oznaczonej @Configuration
        context.scan("com.testarmy");

        context.setServletContext(servletContext);
        ServletRegistration.Dynamic servlet =
                servletContext.addServlet("dispatcher", new DispatcherServlet(context));
        //wymusza uruchomienie servletu podczas startu tomcata
        servlet.setLoadOnStartup(1);
        servlet.addMapping("/");

        //filtr do UTF-8
        FilterRegistration.Dynamic fr = servletContext.addFilter("encodingFilter",
                new CharacterEncodingFilter());
        fr.setInitParameter("encoding", "UTF-8");
        fr.setInitParameter("forceEncoding", "true");
        fr.addMappingForUrlPatterns(null, true, "/*");
    }
}
