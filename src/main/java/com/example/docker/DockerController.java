package com.example.docker;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DockerController {
	
	@RequestMapping("/greet")
	public String greet() {
		return "Hello World";
	}

}
