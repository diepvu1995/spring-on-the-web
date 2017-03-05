package springmvc.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springmvc.models.Spitter;
import springmvc.models.repository.ISpitterRepository;

@Controller
@RequestMapping("/spitter")
public class SpitterController {

	private ISpitterRepository spitterRepository;

	@Autowired
	public SpitterController(ISpitterRepository spitterRepository) {
		this.spitterRepository = spitterRepository;
	}

	public SpitterController() {
	}

	// it will handle HTTP GETrequests for /spitter/register.
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String showRegistrationForm() {
		return "registerForm";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String processRegistration(Spitter spitter) {
		spitterRepository.save(spitter);
		return "redirect:/spitter/" + spitter.getUsername();
	}

	/**
	 * showSpitterProfile()fetches a Spitterobject from the SpitterRepositoryby
	 * the username. It adds the Spitterto the model and then returns profile,
	 * the logical view name for the profile view
	 * 
	 * @param username
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/{username}", method = RequestMethod.GET)
	public String showSpitterProfile(@PathVariable String username, Model model) {
		Spitter spitter = spitterRepository.findByUsername(username);
		model.addAttribute(spitter);
		return "profile";
	}
}
