package springmvc.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.models.Spittle;
import springmvc.models.repository.ISpittleRepository;

@Controller
@RequestMapping("/spittles")
public class SpittleController {
	private ISpittleRepository spittleRepository;
	private static final String MAX_LONG_AS_STRING = "9223372036854775807";

	@Autowired
	public SpittleController(ISpittleRepository spittleRepository) {
		this.spittleRepository = spittleRepository;
	}

	// @RequestMapping(method = RequestMethod.GET)
	// public String spittles(Model model) {
	// model.addAttribute("personList",
	// spittleRepository.findSpittles(Long.MAX_VALUE, 20));
	// return "spittles";
	// }

	@RequestMapping(method = RequestMethod.GET)
	public List<Spittle> spittles(
			@RequestParam(value = "max", defaultValue = MAX_LONG_AS_STRING) long max,
			@RequestParam(value = "count", defaultValue = "20") int count) {
		return spittleRepository.findSpittles(max, count);
	}

	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public String showSpittle(@RequestParam("spittle_id") long spittleId,
			Model model) {
		model.addAttribute(spittleRepository.findOne(spittleId));
		return "spittle";
	}

	@RequestMapping(value = "/{spittleId}", method = RequestMethod.GET)
	public String spittle(@PathVariable long spittleId, Model model) {
		Spittle result = spittleRepository.findOne(spittleId);
		if (result != null) {
			model.addAttribute("error", "");
			model.addAttribute(result);
		} else {
			model.addAttribute("error", "Khong tin thay");
		}
		return "spittle";
	}

	@RequestMapping(value = "/edit/{spittleId}", method = RequestMethod.GET)
	public String edit(@PathVariable long spittleId) {
		System.out.println(spittleId);
		return "spittle";
	}

	@RequestMapping(value = "/delete/{spittleId}", method = RequestMethod.GET)
	public List<Spittle> delete(@PathVariable long spittleId) {
		return spittleRepository.delete(spittleId);

	}

	@RequestMapping(value = "/test/{max}", method = RequestMethod.GET)
	public List<Spittle> test(@PathVariable long max,
			@RequestParam(value = "count", defaultValue = "20") int count) {
		return spittleRepository.findSpittles(max, count);
	}
}
