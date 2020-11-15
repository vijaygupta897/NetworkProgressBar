package com.progress.proj;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Demo {

	@GetMapping("/")
	public String showProgressBar(Model model) {

		return "result";
	}

	@PostMapping("/showresult")
	public String ShowMainProgressbar(@RequestParam("length") int length, @RequestParam("rate") int rate,
			@RequestParam("packet") int packet, Model m) {
		Dao data = new Dao();
		data.setLength(length);
		data.setRate(rate);
		data.setPacket(packet);
		m.addAttribute("result", data);
		return "showAliens";

	}

}
