package hr.fer.webshop.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
@Import(PersistenceConfig.class)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	private static final String USERS_QUERY =
            "select \"username\", \"password\", 1 from ADMIN.\"user\" where \"username\" = ?";
    private static final String AUTH_QUERY =
            "select \"username\", \"role\" from ADMIN.\"user\", ADMIN.\"user_role\""
            + " where \"userRole_id\" = ADMIN.\"user_role\".\"id\" and \"username\" = ?";
 
     @Autowired
     private DataSource datasource;
   
     @Autowired
     public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
         auth.jdbcAuthentication()
             .dataSource(datasource)
             .usersByUsernameQuery(USERS_QUERY)
             .authoritiesByUsernameQuery(AUTH_QUERY);
     }
	
//	@Autowired
//	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
//		auth.inMemoryAuthentication().withUser("user").password("pass").roles("USER");
//	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
			.antMatchers("/*", "/lib/**", "/app/**", "/home", "signin", "userinfo/**","product**", "order**")
			.permitAll()
			.antMatchers("/cart/**").access("hasRole('ROLE_USER')")
			.anyRequest()
			.authenticated()
			.and()
			.formLogin()
			.loginProcessingUrl("/login")
			.loginPage("/login")
			.permitAll()
			.and()
			.logout()
			.permitAll()
			.and()
			.exceptionHandling()
			.accessDeniedPage("/403")
			.and()
			.csrf()
			.disable();
	}
}
