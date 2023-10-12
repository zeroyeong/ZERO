package com.zero.controller;

import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zero.domain.Member;
import com.zero.oauth.SNSLogin;
import com.zero.oauth.SnsValue;
import com.zero.service.MemberService;

@Controller 

public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
    @Autowired
    private JavaMailSender javaMailSender;
	
	@Inject
	private SnsValue naverSns;
	
	@Inject
	private SnsValue googleSns;
	
	@Inject
	private GoogleConnectionFactory googleConnectionFactory;
	
	@Inject
	private OAuth2Parameters googleOAuth2Parameters;
	
	/*________ 회원가입 ________*/
	@GetMapping("/join_agree")
	public String Join() {
		return "member/join";
	}

	@GetMapping("/join")
	public String JoinInput(@ModelAttribute("NewMember") Member member, Model model) {
		
		String mem_id ="";
		String mem_pw ="";
		String mem_pw2 ="";
		String mem_phone ="";
			
		model.addAttribute("mem_id", mem_id);
		model.addAttribute("mem_pw", mem_pw);
		model.addAttribute("mem_pw2", mem_pw2);
		model.addAttribute("mem_phone", mem_phone);
		return "member/joinInput";
	}

	@GetMapping("/idCheck")
	public String idCheck(@RequestParam("id") String mem_id, Model model) {
		int result = memberService.checkId(mem_id);
		model.addAttribute("result", result);
		model.addAttribute("mem_id", mem_id);
		return "member/idCheck";
	}
	

	@PostMapping("/member")
	public String addMember(@ModelAttribute("NewMember") Member member) {
		memberService.addMember(member);
		return "member/login";
	}
	
	/*________ 로그인 ________*/	
	@GetMapping("/login")
	public String login(Model model) throws Exception {
		
		SNSLogin snsLogin = new SNSLogin(naverSns);
		model.addAttribute("naver_url", snsLogin.getNaverAuthUrl());
		
		/* 구글code 발행을 위한 URL 생성 */
		OAuth2Operations oauthOperations = googleConnectionFactory.getOAuthOperations();
		String url = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE, googleOAuth2Parameters);

		model.addAttribute("google_url", url);
		
		return "member/login";
	}
		
	@PostMapping("/login")
	public String login(@RequestParam("mem_id") String mem_id, @RequestParam("mem_pw") String mem_pw,
			Member member, HttpSession session, Model model) {
		
		member.setMem_id(mem_id);
		member.setMem_pw(mem_pw);
		
		String mem_name = memberService.login(member);
		System.out.println("Controller mem_name: "+mem_name);
		
		if(mem_name == null) {//로그인 실패
			model.addAttribute("mem_name", mem_name);
			return "redirect:/login";
		}
		
		session.setAttribute("mem_name", mem_name);
		session.setAttribute("mem_id", mem_id);
		return "redirect:/";
	}
	
	@RequestMapping("/auth/{service}/callback")
	public String snsLoginCallback(@PathVariable String snsService,
			Model model, @RequestParam String code, HttpSession session) throws Exception {
		logger.info("snsLoginCallback: service={}", snsService);
		SnsValue sns = null;
		if(StringUtils.equals("naver", snsService))
			sns = naverSns;
		else if (StringUtils.equals("google", snsService))
			sns = googleSns;
		
		SNSLogin snsLogin = new SNSLogin(googleSns);
		Member snsMember = snsLogin.getUserProfile(code);
		System.out.println("Profile>>" + snsMember);
		
		Member member = memberService.getBySns(snsMember);
		if(member == null) {
			model.addAttribute("result", "존재하지 않는 사용자입니다. 가입해 주세요.");

			//미존재시 가입페이지로 가게끔 해야함
		} else {
			model.addAttribute("result", member.getMem_name() + "님, 반갑습니다.");
			
			//sns로그인했을 때 아이디가 존재하면 로그인되도록
			session.setAttribute("mem_name", member.getMem_name());
		}
		
		return "member/loginResult";
	}
	
	
	/*______계정찾기______*/
	//아이디 찾기
	@GetMapping("/findId")
	public String findId() {
			return "member/findId";
	}
	
	@PostMapping("/findId")
	public String findMemberId(@RequestParam("mem_name") String mem_name, 
			@RequestParam("mem_phone") String mem_phone,
			Member member, Model model) {		
		
		member.setMem_name(mem_name);
		member.setMem_phone(mem_phone);
		
		String mem_id = memberService.findMemberId(member);
		
		model.addAttribute("mem_id", mem_id);
		return "member/findIdResult";
	}
	
	//비밀번호 찾기
	@GetMapping("/findPw")
	public String findPw() {
			return "member/findPw";
	}
	
	@PostMapping("/findPw")
	public String findMemberPw(
			@RequestParam("mem_name") String mem_name,
			@RequestParam("mem_id") String mem_id,
			@RequestParam("mem_phone") String mem_phone,
			Member member, Model model) {
		
		System.out.println("Controller > "+mem_name+" / "+mem_phone+" / "+mem_id);		
		
		member.setMem_id(mem_id);
		member.setMem_name(mem_name);
		member.setMem_phone(mem_phone);

		String mem_pw = memberService.findMemberPw(member);
		
		model.addAttribute("mem_pw", mem_pw);
		
		System.out.println("controller> "+mem_pw);
		return "member/findPwResult";
	}
	
	
	/*________ 로그아웃 ________*/
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}

	/*______마이페이지______*/
	@GetMapping("/mypage")
	public String mypage(HttpSession session, Model model) {
		String mem_id = (String) session.getAttribute("mem_id");
		
		if(mem_id != null) {
			Member member = memberService.getMemberInfo(mem_id);
			model.addAttribute("member", member);
			
			return "member/myPage";
		}
		
		return "redirect:/login";
	}
	
	@PostMapping("/mypage")
	public String modifyInfo(HttpSession session, Member member) {
		String mem_id = (String) session.getAttribute("mem_id");
		member.setMem_id(mem_id);
		memberService.modifyInfo(member);
		
		return "redirect:/mypage";
	}
	
	@GetMapping("/mypage_reservation")
	public String mypage_reservation(HttpSession session, Model model) {
		String mem_id = (String) session.getAttribute("mem_id");
		
		if(mem_id != null) {
			Member member = memberService.getMemberInfo(mem_id);
			model.addAttribute("member", member);
			
			return "member/mypage_reservation";
		}
		
		return "redirect:/login";
	}
	
	/*______탈퇴______*/
	@GetMapping("/delete")
	public String withraw(HttpSession session) {
		String mem_id = (String) session.getAttribute("mem_id");
		if(mem_id != null) {
			memberService.withdraw(mem_id);
		}
		session.invalidate();
		return "redirect:/";
	}
		
    @PostMapping("/email")
    public String verifyEmail(@ModelAttribute("NewMember") Member member,
    						   @RequestParam("mem_id") String mem_id,
					    	   @RequestParam("mem_pw") String mem_pw,
					    	   @RequestParam("user_pwd_check") String mem_pw2,
					    	   @RequestParam("mem_phone") String mem_phone, Model model) throws MessagingException {
    	String subject = "Zero 인증 코드";
    	
		String generatedString = RandomStringUtils.randomAlphanumeric(5);
    	String body = generatedString;
    	
    try {
    	 MimeMessage message = javaMailSender.createMimeMessage();
         MimeMessageHelper helper = new MimeMessageHelper(message, true);
         helper.setFrom("yj_9812@naver.com");
         helper.setTo(mem_id);
         helper.setSubject(subject);
         helper.setText(body);

         javaMailSender.send(message);
    	} catch (MessagingException e) {
         e.printStackTrace();
        }
        String emailcheck = generatedString;
        model.addAttribute("mem_id", mem_id);
        model.addAttribute("mem_pw", mem_pw);
        model.addAttribute("mem_pw2", mem_pw2);
        model.addAttribute("mem_phone", mem_phone);
        model.addAttribute("emailcheck", emailcheck);
		return "member/joinInput";
    }
	
}
