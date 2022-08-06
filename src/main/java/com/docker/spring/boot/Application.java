/**
 * 
 */
package com.docker.spring.boot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author server
 *
 */
@SpringBootApplication
@RestController
public class Application {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);

	}

	@RequestMapping("/")
	public String home() {
		return "Hello Docker World";
	}

}
