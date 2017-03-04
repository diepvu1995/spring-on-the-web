package springmvc.models;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Spitter {
	private Long id;
	@NotNull
	@Size(min = 5, max = 16)
	private String username;
	@NotNull
	@Size(min = 5, max = 25)
	private String password;
	@NotNull
	@Size(min = 2, max = 30)
	private String firstName;
	@NotNull
	@Size(min = 2, max = 30)
	private String lastName;

	public Spitter(long l, String string, String string2, String string3,
			String string4) {
		// TODO Auto-generated constructor stub
	}

	public Spitter(String string, String string2, String string3, String string4) {
		// TODO Auto-generated constructor stub
	}

	public String getUsername() {
		// TODO Auto-generated method stub
		return null;
	}
}
