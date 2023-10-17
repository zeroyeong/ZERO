package com.zero.oauth;

import java.util.Iterator;

import org.apache.commons.lang3.StringUtils;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;
import com.zero.domain.Member;

public class SNSLogin {
	private OAuth20Service oauthService;
	private SnsValue sns;
	
	public SNSLogin(SnsValue sns) {
		this.oauthService = new ServiceBuilder(sns.getClientId())
				.apiSecret(sns.getClientSecret())
				.callback(sns.getRedirectUrl())
				.build(sns.getApi20Instance());
		this.sns = sns;
	}
	
	public String getNaverAuthUrl() {
		return this.oauthService.getAuthorizationUrl();
	}
	
	public String getKakaoAuthUrl() {
		return this.oauthService.getAuthorizationUrl();
	}
	
	public Member getUserProfile(String code) throws Exception {
		OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
		OAuthRequest request = new OAuthRequest(Verb.GET, this.sns.getProfileUrl());
		oauthService.signRequest(accessToken, request);
		
		Response response = oauthService.execute(request);
		return parseJson(response.getBody());
	}
	
	public Member test(String code) throws Exception {
		
		// 1. "인가 코드"로 "액세스 토큰" 요청
        // HTTP Header 생성
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

        // HTTP Body 생성
        MultiValueMap<String, String> body = new LinkedMultiValueMap<>();
        body.add("grant_type", "authorization_code");
        body.add("client_id", "fa9fd2a0fa3c4ee2e000fb956a3bf195");
        body.add("redirect_uri", "http://localhost:8080/zero/auth/kakao/callback");
        body.add("code", code);

        // HTTP 요청 보내기
        HttpEntity<MultiValueMap<String, String>> kakaoTokenRequest =
                new HttpEntity<>(body, headers);
        RestTemplate rt = new RestTemplate();
        ResponseEntity<String> response = rt.exchange(
                "https://kauth.kakao.com/oauth/token",
                HttpMethod.POST,
                kakaoTokenRequest,
                String.class
        );

        // HTTP 응답 (JSON) -> 액세스 토큰 파싱
        String responseBody = response.getBody();
        ObjectMapper objectMapper = new ObjectMapper();
        JsonNode jsonNode = objectMapper.readTree(responseBody);
        String accessToken = jsonNode.get("access_token").asText();
        
		// 2. 토큰으로 카카오 API 호출
        // HTTP Header 생성
        headers.add("Authorization", "Bearer " + accessToken);
        headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

        // HTTP 요청 보내기
        HttpEntity<MultiValueMap<String, String>> kakaoUserInfoRequest = new HttpEntity<>(headers);
        response = rt.exchange(
                "https://kapi.kakao.com/v2/user/me",
                HttpMethod.POST,
                kakaoUserInfoRequest,
                String.class
        );

        responseBody = response.getBody();
        jsonNode = objectMapper.readTree(responseBody);
        String email = jsonNode.get("kakao_account")
                .get("email").asText();

        Member member = new Member();
    	member.setMem_id(email);
        
    	return member;
	}
	
	private Member parseJson(String body) throws Exception {
		//System.out.println("==================\n" + body + "====================");
		
		Member member = new Member();
			
		ObjectMapper mapper = new ObjectMapper();
		JsonNode rootNode = mapper.readTree(body);

		if(this.sns.isGoogle()) {
			if(sns.isGoogle())
					
			member.setMem_id(rootNode.get("email").asText());
			Iterator<JsonNode> iterEmails = rootNode.path("emails").elements();
			
			while(iterEmails.hasNext()) {
				JsonNode emailNode = iterEmails.next();
				String type = emailNode.get("type").asText();
				
				if(StringUtils.equals(type, "account")) {
					member.setMem_id(emailNode.get("value").asText());
					break;
				}
			}
		} else if (this.sns.isNaver()) {
			JsonNode resNode = rootNode.get("response");
			member.setMem_id(resNode.get("email").asText());
		}
			
		return member;
	}
}
