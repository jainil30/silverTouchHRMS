package com.jainil.silverTouchHRMS.config;


import com.jainil.silverTouchHRMS.entity.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Autowired
    UserDetailService userDetailService;

    @Bean
    public PasswordEncoder passwordEncoder() {
//        return new BCryptPasswordEncoder();
        return NoOpPasswordEncoder.getInstance();
    }


    @Bean
    public SecurityFilterChain filterChain(HttpSecurity httpSecurity) throws Exception {
        System.out.println("securityConfig");
        System.out.println("entered filterchain ");
        httpSecurity
                .csrf(AbstractHttpConfigurer::disable)
                .authorizeHttpRequests(authorizationManagerRequestMatcherRegistry -> {
                    System.out.println("URLS..........");
                    authorizationManagerRequestMatcherRegistry
                            .requestMatchers("/admin/**").hasRole("ADMIN")
                            .requestMatchers("/employee/**").hasRole("EMPLOYEE")
                            .requestMatchers("/login").permitAll()
                            .requestMatchers("/register").permitAll()
                            .requestMatchers("/**").permitAll()
                            .anyRequest().authenticated();
                    System.out.println("Authenticated...");
                }).formLogin(httpSecurityFormLoginConfigurer -> {
                    System.out.println("entered formLogin ");

                    httpSecurityFormLoginConfigurer.loginPage("/login").loginProcessingUrl("/doLogin").successHandler((request, response, authentication) -> {
                        System.out.println("Entered onSuccess Handler");

                        System.out.println("It worked");
                        for (GrantedAuthority authority : authentication.getAuthorities()) {
                            if (authority.getAuthority().equals(Role.ROLE_ADMIN.toString())) {
                                System.out.println("is admin");
                                response.sendRedirect("/admin/dashboard");
                                return;
                            } else if (authority.getAuthority().equals(Role.ROLE_EMPLOYEE.toString())) {
                                System.out.println("is employee");
                                response.sendRedirect("/employee/dashboard");
                                return;
                            }
                        }

                    }).failureUrl("/login?error=true");
                });

        httpSecurity.authenticationProvider(authProvider());

        return httpSecurity.build();
    }
    @Bean
    public DaoAuthenticationProvider authProvider() {
        DaoAuthenticationProvider authenticationProvider = new DaoAuthenticationProvider();
        authenticationProvider.setPasswordEncoder(passwordEncoder());
        authenticationProvider.setUserDetailsService(userDetailService);
        return authenticationProvider;
    }


}
