//package com.progress.proj;
//
//import org.springframework.context.annotation.Configuration;
//import org.springframework.web.servlet.config.annotation.EnableWebMvc;
//import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
//
//@Configuration
//@EnableWebMvc
////
//public class ApplicationSecurityConfig extends WebMvcConfigurerAdapter{
////
////	//google cloud to provide security
////	
//////	protected void configure(HttpSecurity http) throws Exception {
//////		http.
//////		csrf().disable().
//////		authorizeRequests().antMatchers("/login").
//////		permitAll().
//////		anyRequest().authenticated();
//////		
//////		
//////	}
//////	
////	
////	
////	
////	
////	
////	
////	
//////	@Autowired
//////	private UserDetailsServiceAutoConfiguration userDetailsService;
//////	@Autowired
//////    private JwtFilter jwtFilter;
//////	@Bean
//////	public AuthenticationProvider authprovider() {
//////		
//////		DaoAuthenticationProvider provider= new DaoAuthenticationProvider();
//////		provider.setUserDetailsService(userDetailsService);
//////		provider.setPasswordEncoder(new BCryptPasswordEncoder());
//////		return provider;
//////		
//////	}
//////own login form
//////protected void configure(HttpSecurity http) throws Exception {
//////		
//////		// for rest services
//////	http.
//////	csrf().disable().
//////	authorizeRequests().antMatchers("/").
//////	permitAll().anyRequest().authenticated();
//////	
////	//http.addFilterBefore(jwtFilter, UsernamePasswordAuthenticationFilter.class);
////	
//////	  
////	  
////	  //for UI part
//////	http.
//////		csrf().disable().
//////		authorizeRequests().antMatchers("/","/").
//////		permitAll().anyRequest().authenticated().and().
//////		formLogin().
//////		loginPage("/").
//////		and().
//////		logout().invalidateHttpSession(true).
//////		clearAuthentication(true).
//////		logoutRequestMatcher(new AntPathRequestMatcher("/")).
//////		logoutSuccessUrl("/logout-success").
//////		permitAll();
//////	
////		//http.addFilterBefore(jwtFilter, UsernamePasswordAuthenticationFilter.class);
////		
////		
//////	}
////	@Override
////	@Bean
////	public AuthenticationManager authenticationManagerBean() throws Exception {
////		
////		return super.authenticationManagerBean();
////	}
//	
//	
//	
//	
//	
//	//if no data base needed
////	@Bean
////	protected UserDetailsService userDetailsService() {
////		List<UserDetails> users = new ArrayList<>();
////		users.add(User.withDefaultPasswordEncoder().username("sandeep").password("1234").roles("USER").build());
////		return new InMemoryUserDetailsManager(users);
////	}
//
//}
