package com.zero.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.zero.auth.KakaoLoginBO;
import com.zero.auth.NaverLoginBO;
import com.zero.domain.Member;
import com.zero.service.MemberService;

@Controller 

public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	/*________ ȸ������ ________*/
	@GetMapping("/join_agree")
	public String Join() {
		return "member/join";
	}

	@GetMapping("/join")
	public String JoinInput(@ModelAttribute("NewMember") Member member) {		
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
	
	
	/*________ �α��� ________*/
	@GetMapping("/login")
	public String toLoginPage(HttpSession session) {
		String mem_id = (String) session.getAttribute("mem_id");
		if(mem_id != null) { //�α����� �Ǿ��ִ� ���¶��
			return "redirect:/zero";
		}
		return "member/login"; //�α����� �Ǿ����� �ʴٸ� �α�����������
	}
	
	@PostMapping("/login")
	public String login(@RequestParam("mem_id") String mem_id, @RequestParam("mem_pw") String mem_pw,
			Member member, HttpSession session, Model model) {
		
		member.setMem_id(mem_id);
		member.setMem_pw(mem_pw);
		
		String mem_name = memberService.login(member);
		System.out.println("Controller mem_name: "+mem_name);
		
		if(mem_name == null) {//�α��� ����
			model.addAttribute("mem_name", mem_name);
			return "redirect:/login";
		}
		
		session.setAttribute("mem_name", mem_name);
		session.setAttribute("mem_id", mem_id);
		return "redirect:/";
	}
	
	/*______����ã��______*/
	//���̵� ã��
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
	
	//��й�ȣ ã��
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
	
	/*________ �Ҽ� �α��� ________*/
	@Autowired
	NaverLoginBO naverLoginBO;
	KakaoLoginBO kakaoLoginBO;
	
	// �α��� ȭ��
	@RequestMapping(value = "/login.do")
	public String login(HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) {

		String serverUrl = request.getScheme()+"://"+request.getServerName();
		if(request.getServerPort() != 80) {
			serverUrl = serverUrl + ":" + request.getServerPort();
		}
		
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session, serverUrl);
		model.addAttribute("naverAuthUrl", naverAuthUrl);
		
		String kakaoAuthUrl = kakaoLoginBO.getAuthorizationUrl(session, serverUrl);
		model.addAttribute("kakaoAuthUrl", kakaoAuthUrl);

		return "/login/login";
	}

	// ���̹� �α��� ������ callback
	@RequestMapping(value = "/naverOauth2ClientCallback.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String naverOauth2ClientCallback(HttpServletRequest request, HttpServletResponse response, Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws Exception {

		String serverUrl = request.getScheme()+"://"+request.getServerName();
		if(request.getServerPort() != 80) {
			serverUrl = serverUrl + ":" + request.getServerPort();
		}

		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state, serverUrl);
		if(oauthToken == null) {
			model.addAttribute("msg", "���̹� �α��� access ��ū �߱� ���� �Դϴ�.");
			model.addAttribute("url", "/");
			return "/common/redirect";
		}
		
		// �α��� ����� ������ �о�´�
		String apiResult = naverLoginBO.getUserProfile(oauthToken, serverUrl);
		
		JSONParser jsonParser = new JSONParser();
		Object obj = jsonParser.parse(apiResult);
		JSONObject jsonObj = (JSONObject) obj;
		
		JSONObject response_obj = (JSONObject) jsonObj.get("response");

		// ������ ��ȸ
		String id = (String) response_obj.get("id");
		String gender = (String) response_obj.get("gender");
		
		// ���ǿ� ����� ���� ���
		session.setAttribute("islogin_r", "Y");
		session.setAttribute("id", id);
		session.setAttribute("gender", gender);
		
		return "redirect:/";
	}
	
	// īī�� �α��� ������ callback
	@RequestMapping(value = "/kakaoOauth2ClientCallback.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String kakaoOauth2ClientCallback(HttpServletRequest request, HttpServletResponse response, Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws Exception {

		String serverUrl = request.getScheme() + "://" + request.getServerName();
		if (request.getServerPort() != 80) {
			serverUrl = serverUrl + ":" + request.getServerPort();
		}

		OAuth2AccessToken oauthToken;
		oauthToken = kakaoLoginBO.getAccessToken(session, code, state, serverUrl);
		if (oauthToken == null) {
			model.addAttribute("msg", "īī�� �α��� access ��ū �߱� ���� �Դϴ�.");
			model.addAttribute("url", "/");
			return "/common/redirect";
		}

		// �α��� ����� ������ �о�´�
		String apiResult = kakaoLoginBO.getUserProfile(oauthToken, serverUrl);

		JSONParser jsonParser = new JSONParser();
		Object obj = jsonParser.parse(apiResult);
		JSONObject jsonObj = (JSONObject) obj;

		JSONObject response_obj = (JSONObject) jsonObj.get("kakao_account");
		
		// ������ ��ȸ
		String id = (String) response_obj.get("id");
		String gender = (String) response_obj.get("gender");
		
		// ���ǿ� ����� ���� ���
		session.setAttribute("islogin_r", "Y");
		session.setAttribute("id", id);
		session.setAttribute("gender", gender);	

		return "redirect:/";
	}

	// �α׾ƿ�
	@RequestMapping(value = "/logout.do")
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {

		// ���� ����
		session.invalidate();
		
		return "redirect:/";
	}	

	
	/*________ �α׾ƿ� ________*/
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}

	/*______����������______*/
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
	
	/*______Ż��______*/
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
