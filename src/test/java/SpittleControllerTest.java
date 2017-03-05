import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hamcrest.Matchers;
import org.junit.Test;
import org.mockito.Mockito;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.web.servlet.view.InternalResourceView;

import springmvc.controllers.SpitterController;
import springmvc.controllers.SpittleController;
import springmvc.models.Spitter;
import springmvc.models.Spittle;
import springmvc.models.repository.ISpitterRepository;
import springmvc.models.repository.ISpittleRepository;

public class SpittleControllerTest {

	@Test
	public void shouldShowRecentSpittles() throws Exception {
		List<Spittle> expectedSpittles = createSpittleList(20);
		ISpittleRepository mockRepository = Mockito
				.mock(ISpittleRepository.class);
		Mockito.when(mockRepository.findSpittles(Long.MAX_VALUE, 20))
				.thenReturn(expectedSpittles);

		SpittleController controller = new SpittleController(mockRepository);
		MockMvc mockMvc = standaloneSetup(controller).setSingleView(
				new InternalResourceView("/WEB-INF/views/spittles.jsp"))
				.build();

		mockMvc.perform(get("/spittles"))
				.andExpect(view().name("spittles"))
				.andExpect(model().attributeExists("personList"))
				.andExpect(
						model().attribute("personList",
								Matchers.hasItems(expectedSpittles.toArray())));
	}

	private List<Spittle> createSpittleList(int count) {
		List<Spittle> spittles = new ArrayList<Spittle>();
		for (int i = 0; i < count; i++) {
			spittles.add(new Spittle(Long.valueOf(238900 - i), "Spittle" + i,
					new Date()));
		}
		return spittles;

	}

	@Test
	public void shouldShowPagedSpittles() throws Exception {
		List<Spittle> expectedSpittles = createSpittleList(50);
		ISpittleRepository mockRepository = Mockito
				.mock(ISpittleRepository.class);
		Mockito.when(mockRepository.findSpittles(238900, 50)).thenReturn(
				expectedSpittles);
		SpittleController controller = new SpittleController(mockRepository);
		MockMvc mockMvc = standaloneSetup(controller).setSingleView(
				new InternalResourceView("/WEB-INF/views/spittles.jsp"))
				.build();
		mockMvc.perform(get("/spittles?max=238900&count=50"))
				.andExpect(view().name("spittles"))
				.andExpect(model().attributeExists("spittleList"))
				.andExpect(
						model().attribute("spittleList",
								Matchers.hasItems(expectedSpittles.toArray())));
	}

	@Test
	public void testSpittle() throws Exception {
		Spittle expectedSpittle = new Spittle(1000L, "Hello", new Date());
		ISpittleRepository mockRepository = Mockito
				.mock(ISpittleRepository.class);
		Mockito.when(mockRepository.findOne(12345)).thenReturn(expectedSpittle);
		SpittleController controller = new SpittleController(mockRepository);
		MockMvc mockMvc = standaloneSetup(controller).build();
		mockMvc.perform(get("/spittles/12345"))
				.andExpect(view().name("spittle"))
				.andExpect(model().attributeExists("spittle"))
				.andExpect(model().attribute("spittle", expectedSpittle));
	}

	@Test
	public void shouldShowRegistration() throws Exception {
		SpitterController controller = new SpitterController();
		MockMvc mockMvc = standaloneSetup(controller).build();
		mockMvc.perform(get("/spitter/register")).andExpect(
				view().name("registerForm"));
	}

	@Test
	public void shouldProcessRegistration() throws Exception {
		ISpitterRepository mockRepository = Mockito
				.mock(ISpitterRepository.class);
		Spitter unsaved = new Spitter("jbauer", "24hours", "Jack", "Bauer");
		Spitter saved = new Spitter(24L, "jbauer", "24hours", "Jack", "Bauer");
		Mockito.when(mockRepository.save(unsaved)).thenReturn(saved);
		SpitterController controller = new SpitterController(mockRepository);
		MockMvc mockMvc = standaloneSetup(controller).build();
		mockMvc.perform(
				post("/spitter/register").param("firstName", "Jack")
						.param("lastName", "Bauer").param("username", "jbauer")
						.param("password", "24hours")).andExpect(
				redirectedUrl("/spitter/jbauer"));
		Mockito.verify(mockRepository, Mockito.atLeastOnce()).save(unsaved);
	}

}
