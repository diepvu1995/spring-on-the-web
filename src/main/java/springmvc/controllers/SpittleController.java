package springmvc.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.models.Spittle;
import springmvc.models.repository.ISpittleRepository;

@Controller
@RequestMapping("/spittles")
public class SpittleController {
	private ISpittleRepository spittleRepository;

	@Autowired
	public SpittleController(ISpittleRepository spittleRepository) {
		this.spittleRepository = spittleRepository;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String spittles(Model model) {
		model.addAttribute("personList",
				spittleRepository.findSpittles(Long.MAX_VALUE, 20));
		return "spittles";
	}

	@RequestMapping(value = "/paging")
	public List<Spittle> spittles(@RequestParam("max") long max,
			@RequestParam("count") int count) {
		return spittleRepository.findSpittles(max, count);
	}

	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public String showSpittle(@RequestParam("spittle_id") long spittleId,
			Model model) {
		model.addAttribute(spittleRepository.findOne(spittleId));
		return "spittle";
	}

}
