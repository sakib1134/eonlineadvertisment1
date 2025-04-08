package com.grownited;

import java.util.Map;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

@SpringBootApplication
public class EOnlineadvertisment1Application {

	public static void main(String[] args) {
		SpringApplication.run(EOnlineadvertisment1Application.class, args);
	}

	
	
	@SpringBootApplication
	public class OnlineAdvertismentApplication {

		public static void main(String[] args) {
			SpringApplication.run(OnlineAdvertismentApplication.class, args);
		}
		@Bean
		PasswordEncoder encoder() {
			return new BCryptPasswordEncoder(5);
		}
		
		@Bean
		Cloudinary cloudinary() {
			Map<String, String> config = ObjectUtils.asMap("cloud_name", "dgvq2szyu", "api_key", "267788752263435",
					"api_secret", "hIM3sQkkMWR-HTVrJiZKIeZduCY");
			return new Cloudinary(config);
		}
	}
}
