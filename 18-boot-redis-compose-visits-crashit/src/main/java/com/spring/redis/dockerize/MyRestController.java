package com.spring.redis.dockerize;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.spring.redis.dockerize.service.VisitCountService;

@RestController
public class MyRestController {

	VisitCountService visitCountService;
	
	public MyRestController(VisitCountService visitCountService) {
		this.visitCountService = visitCountService;
	}

	@GetMapping("/visit")
	public String visit() {
		long visitCount = visitCountService.incrementCount();
		return "You visited "+visitCount+ " times";
	}

	@GetMapping("/crashit")
	public void crashIt() {
		System.out.println("Crashing the Server now :o ... ");
		System.exit(99);
	}

	
}
