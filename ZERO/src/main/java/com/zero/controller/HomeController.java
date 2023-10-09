package com.zero.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "index";
	}

	@RequestMapping("/customer")
	public String customer() {
		return "service/service";
	}
	
	
	
	@GetMapping("/home")
	public String emailTest(Model model) {
		
        String emailcheck = "이메일을 인증해주세요";
        model.addAttribute("emailcheck", emailcheck);
		return "home";
	}

    @Autowired
    private JavaMailSender javaMailSender;
	
    @PostMapping("/email")
    public String verifyEmail(@RequestParam("email") String email, Model model) throws MessagingException {
    	String subject = "email인증 test";
    	String body = "인증코드 1234";
    	
    try {
    	 MimeMessage message = javaMailSender.createMimeMessage();
         MimeMessageHelper helper = new MimeMessageHelper(message, true);
         helper.setFrom("choiyj9812@naver.com");
         helper.setTo(email);
         helper.setSubject(subject);
         helper.setText(body);

         javaMailSender.send(message);
    	} catch (MessagingException e) {
         e.printStackTrace();
        }
    	System.out.println("email = " + email);
        String emailcheck = "이메일 인증 완료!!";
        model.addAttribute("emailcheck", emailcheck);
        return "home"; // Display result page to the user
    }
	
}