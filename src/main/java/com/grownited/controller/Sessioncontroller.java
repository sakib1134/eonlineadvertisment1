
package com.grownited.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.grownited.entity.HoardingEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.HoardingRepository;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailService;

import jakarta.servlet.http.HttpSession;


@Controller 
public class Sessioncontroller {
	
	@Autowired
	UserRepository repouser;
	
	@Autowired
	MailService serviceMail;
	
	@Autowired
	PasswordEncoder encoder;
	
	@Autowired
	Cloudinary cloudinary;

	@Autowired
	HoardingRepository hoardingRepository;




@GetMapping("homepage")
public String homepage(Model model) {
	model.addAttribute("hordings", hoardingRepository.findAll());
	
	return "homepage";
}

@GetMapping("ads")
public String ads(Model model) {
	model.addAttribute("hordings", hoardingRepository.findAll());
	
	return "ads";
}




@GetMapping("ad_temp1")
public String ad_temp1(Integer adId,Model model) {
	Optional<HoardingEntity> opH =    hoardingRepository.findById(adId);
	model.addAttribute("h",opH.get());
	model.addAttribute("all", hoardingRepository.findAll());
	
	return "ad_temp1";
}




@GetMapping("login")
public String login() {
		return "login";
}

@GetMapping("myprofile")
public String myProfile(HttpSession session, Model model) {
    // Fetch the logged-in user from the session
    UserEntity loggedInUser = (UserEntity) session.getAttribute("user");

    if (loggedInUser == null) {
        return "redirect:/login";  // Redirect to login page if no user is logged in
    }

    // Add user data to the model for displaying on the profile page
    model.addAttribute("user", loggedInUser);

    return "myprofile";  // Return the profile page
}
@GetMapping("adminprofile")
public String adminProfile(HttpSession session, Model model) {
    // Fetch the logged-in user from the session
    UserEntity loggedInUser = (UserEntity) session.getAttribute("user");

    if (loggedInUser == null) {
        return "redirect:/login";  // Redirect to login page if no user is logged in
    }

    // Add user data to the model for displaying on the profile page
    model.addAttribute("user", loggedInUser);

    return "adminprofile";  // Return the profile page
}


@GetMapping("signup")
public String signup(String email, String password) {
	        
		return "signup";
}

@GetMapping("forgetpassword")
	public String forgetpassword() {
		return "forgetpassword";
}	
@PostMapping("saveuser")
public String saveuser( UserEntity userEntity, MultipartFile profilePic) {
	
	
	// Check if the file is provided
    if (profilePic == null || profilePic.isEmpty()) {
        System.out.println("Profile picture is missing!");
        return "signup"; // Redirect back to signup page
    }

    try {
        // Upload to Cloudinary
        Map result = cloudinary.uploader().upload(profilePic.getBytes(), ObjectUtils.emptyMap());
        userEntity.setProfilePicPath(result.get("url").toString());
    } catch (IOException e) {
        e.printStackTrace();
        return "signup"; // Return to signup page on failure
    }
		
	String encPassword = encoder.encode(userEntity.getPassword());
	userEntity.setPassword(encPassword);
	userEntity.setCreateAt("date");
	userEntity.setActive("Active");
	userEntity.setRole("USER");
	repouser.save(userEntity);
	serviceMail.sendWelcomeMail(userEntity.getEmail(),userEntity.getFirstName());
return "login";
}


@GetMapping("changepassword")
public String changepassword() {
return "changepassword";
}



@PostMapping("sendotp")
public String sendOtp(String email, Model model) {
	// email valid
	Optional<UserEntity> op = repouser.findByEmail(email);
	if (op.isEmpty()) {
		// email invalid
		model.addAttribute("error", "Email not found");
		return "forgetpassword";
	} else {
		// email valid
		// send mail otp
		// opt generate
		// send mail otp
		String otp = "";
		otp = (int) (Math.random() * 1000000) + "";// 0.25875621458541

		UserEntity user = op.get();
		user.setOtp(otp);
		repouser.save(user);// update otp for user
		serviceMail.sendOtpForForgetPassword(email, user.getFirstName(), otp);
		return "changepassword";

	}
}


@GetMapping("listuser")
public String listuser(Model model) {
	List<UserEntity> userList =repouser.findAll();
	model.addAttribute("userList", userList);
	return "listuser";
	
	
}

@GetMapping("viewuser")
public String viewuser(Integer userId, Model model) {
	// ?
	System.out.println("id ===> " + userId);
	Optional<UserEntity> op = repouser.findById(userId);
	if (op.isEmpty())
	{
	} else {
		UserEntity user = op.get();
		model.addAttribute("user", user);
		 }
		return "viewuser";
}

@GetMapping("deleteuser")
public String deleteuser(Integer userId) {
	repouser.deleteById(userId);
	return "redirect:/listuser";
}




@PostMapping("authenticate")
public String authenticate(String email, String password,Model model,HttpSession session) {// sakira@yopmail.com sakira
	System.out.println(email);
	System.out.println(password);

	// users -> email,password
	Optional<UserEntity> op = repouser.findByEmail(email);
	// select * from users where email = :email and password = :password
	if (op.isPresent()) {
		// true
		// email
		UserEntity dbUser = op.get();
		
		boolean ans = encoder.matches(password, dbUser.getPassword());

		if (ans == true) {
			session.setAttribute("user", dbUser); // session -> user set
			if (dbUser.getRole().equals("ADMIN")) {

				return "redirect:/admindashboard";
			} 
			else if (dbUser.getRole().equals("USER")) {

				return "redirect:/homepage";
			} 
			else {
				model.addAttribute("error", "Please contact Admin with Error Code #0991");
				return "login";
			}

		}
	}
	model.addAttribute("error","Invalid Credentials");
	return "login";
}





@GetMapping("logout")
public String logout(HttpSession session) {
	session.invalidate();
	return "redirect:/login";// login url
}



@PostMapping("updatepassword")
public String updatePassword(String email, String password, String otp, Model model) {
	Optional<UserEntity> op = repouser.findByEmail(email);
	if (op.isEmpty()) {
		model.addAttribute("error", "Invalid Data");
		return "changepassword";
	} else {
		UserEntity user = op.get();
		if (user.getOtp().equals(otp)) {
			String encPwd = encoder.encode(password);
			user.setPassword(encPwd);
			user.setOtp("");
			repouser.save(user);// update
		} else {

			model.addAttribute("error", "Invalid Data");
			return "changepassword";
		}
	}
	model.addAttribute("msg","Password updated");
	return "login";
}

@GetMapping("edituser")
public String edituser(Integer userId,Model model) {
	Optional<UserEntity> op = repouser.findById(userId);
	if (op.isEmpty()) {
		return "redirect:/listuser";
	} else {
		model.addAttribute("user",op.get());
		return "edituser";

	}
}
//save -> entity -> no id present -> insert 
//save -> entity -> id present -> not present in db -> insert 
//save -> entity -> id present -> present in db -> update  

@PostMapping("updateuser")
public String updateuser(UserEntity user, @RequestParam("profilePic") MultipartFile profilePic) {
    Optional<UserEntity> op = repouser.findById(user.getUserId());

    if (op.isPresent()) {
        UserEntity dbUser = op.get();
        dbUser.setFirstName(user.getFirstName());
        dbUser.setLastName(user.getLastName());
        dbUser.setContactNum(user.getContactNum());
        dbUser.setEmail(user.getEmail());

        // Handle profile picture update
        if (profilePic != null && !profilePic.isEmpty()) {
            try {
                // Upload to Cloudinary
                Map result = cloudinary.uploader().upload(profilePic.getBytes(), ObjectUtils.emptyMap());
                dbUser.setProfilePicPath(result.get("url").toString()); // Update profile pic path
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        repouser.save(dbUser);
    }
    return "redirect:/listuser";
}


}
