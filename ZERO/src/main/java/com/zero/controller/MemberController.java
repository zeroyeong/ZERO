package com.zero.controller;

import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	private SnsValue kakaoSns;
	
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
	
	/*________ 이메일 인증 ________*/	
	@PostMapping("/member")
	public String addMember(@ModelAttribute("NewMember") Member member) {
		memberService.addMember(member);
		return "member/login";
	}
	
    @PostMapping("/email")
    public String verifyEmail(Model model,
    		@ModelAttribute("NewMember") Member member,
		    @RequestParam("mem_id") String mem_id,
    	    @RequestParam("mem_pw") String mem_pw,
    	    @RequestParam("user_pwd_check") String mem_pw2,
    	    @RequestParam("mem_phone") String mem_phone )
    	    		throws MessagingException {
    	
    	String subject = "ZEROFUTSAL 회원가입 인증코드";
    	
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
	
	/*________ 로그인 ________*/	
	@GetMapping("/login")
	public String login(Member member, Model model, HttpSession session) throws Exception {
		
		String id = (String) session.getAttribute("mem_name");
		if(id != null) {
			return "redirect:/";
		}
		
		SNSLogin naverLogin = new SNSLogin(naverSns);
		model.addAttribute("naver_url", naverLogin.getNaverAuthUrl());
		
		/* 구글code 발행을 위한 URL 생성 */
		OAuth2Operations oauthOperations = googleConnectionFactory.getOAuthOperations();
		String url = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE, googleOAuth2Parameters);

		model.addAttribute("google_url", url);
		
		/* 카카오 code 발행을 위한 URL 생성 */
		SNSLogin kakaoLogin = new SNSLogin(kakaoSns);
		model.addAttribute("kakao_url", kakaoLogin.getKakaoAuthUrl());
			
		return "member/login";
	}
		
	@PostMapping("/login")
	public String login(@RequestParam("mem_id") String mem_id, @RequestParam("mem_pw") String mem_pw,
			Member member, HttpSession session, RedirectAttributes rttr,
			HttpServletResponse response, HttpServletRequest request) {
		
		member.setMem_id(mem_id);
		member.setMem_pw(mem_pw);
		
		String mem_name = memberService.login(member);
		
		if(mem_name == null) {//로그인 실패
			rttr.addFlashAttribute("login_result", "fail");
			System.out.println("로그인 실패");
			return "redirect:/login";
		}else {			
			session.setAttribute("mem_name", mem_name);
			session.setAttribute("mem_id", mem_id);	
		}
		return "redirect:/";
	}
	
	/*________ 소셜로그인 콜백 ________*/	
	@RequestMapping("/auth/{snsService}/callback")
	public String snsLoginCallback(HttpSession session, Model model, 
			@PathVariable String snsService,
			@RequestParam String code) throws Exception {
		
		logger.info("snsLoginCallback: service={}", snsService);
		
		SnsValue sns = null;
		SNSLogin snsLogin = null;
		Member snsMember = null;	
		
		String snsId = "";
		String emailId = "";
		String snsType = "";
		
		if(StringUtils.equals("naver", snsService)) {
			sns = naverSns;
			snsLogin = new SNSLogin(naverSns);
			snsMember = snsLogin.getUserProfile(code);
			snsId = snsMember.getNaverId();
			emailId = snsMember.getEmail();
			snsType="naver";
		}
		else if (StringUtils.equals("google", snsService)) {
			sns = googleSns;
			snsLogin = new SNSLogin(googleSns);		
			snsMember = snsLogin.getUserProfile(code);
			snsId = snsMember.getGoogleId();
			emailId = snsMember.getEmail();
			snsType="google";
		} else if(StringUtils.equals("kakao", snsService)) {
			sns = kakaoSns;
			snsLogin = new SNSLogin(kakaoSns);
			snsMember = snsLogin.getUserProfile(code);
			snsId = snsMember.getNaverId();
			emailId = snsMember.getEmail();
			snsType="kakao";
		}

		Member member = memberService.getBySns(snsId, emailId, snsType);
		
		if(member == null) {
			return "redirect:/join_agree";
		} else {		
			session.setAttribute("mem_name", member.getMem_name());
			session.setAttribute("mem_id", member.getMem_id());
		}
		
		return "redirect:/";
	}
	
	
	/*______계정찾기______*/
	//아이디 찾기
	@GetMapping("/findId")
	public String findId() {
			return "member/findId";
	}
	
	@PostMapping("/findId")
	public String findMemberId(Member member, Model model,
			@RequestParam("mem_name") String mem_name, 
			@RequestParam("mem_phone") String mem_phone) {		
		
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
	public String findMemberPw(Member member, Model model,
			@RequestParam("mem_name") String mem_name,
			@RequestParam("mem_id") String mem_id,
			@RequestParam("mem_phone") String mem_phone) {		
		
		member.setMem_id(mem_id);
		member.setMem_name(mem_name);
		member.setMem_phone(mem_phone);

		String mem_pw = memberService.findMemberPw(member);
		
		model.addAttribute("mem_pw", mem_pw);
		
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
	
}
