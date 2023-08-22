package com.example.restservice;

import java.util.concurrent.atomic.AtomicLong;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DataController {

    private final AtomicLong counter = new AtomicLong();

	@GetMapping("/")
	public Data index() {
		return new Data(counter.incrementAndGet(), "Sample Data");
	}
}
