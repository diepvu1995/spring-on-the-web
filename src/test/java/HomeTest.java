import static org.junit.Assert.assertEquals;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

import org.junit.Test;
import org.springframework.test.web.servlet.MockMvc;

import springmvc.controllers.HomeController;

public class HomeTest {
	@Test
	public void testHomePage_001() throws Exception {
		HomeController controller = new HomeController();
		MockMvc mockMvc = standaloneSetup(controller).build();
		mockMvc.perform(get("/")).andExpect(view().name("home"));
	}

	@Test
	public void testHomePage_002() throws Exception {
		HomeController controller = new HomeController();
		assertEquals("home", controller.home());
	}
}
