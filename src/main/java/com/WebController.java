package com;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;



@RestController
public class WebController {

	@RequestMapping("/sample")
	public String Sample(@RequestParam(value = "name",
	defaultValue = "DefaultName") String name) {
		return "Hellow" + name;

	}
}