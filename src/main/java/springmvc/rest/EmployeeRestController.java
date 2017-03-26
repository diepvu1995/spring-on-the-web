package springmvc.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import springmvc.models.Spittle;
import springmvc.models.repository.ISpittleRepository;

@RestController
public class EmployeeRestController {
	@Autowired
	private ISpittleRepository spittleRepos;

	@RequestMapping(path = "/getAllSpittles", method = RequestMethod.GET)
	public List<Spittle> getAllSpittles() {
		return spittleRepos.createSpittleList(100);
	}
}
