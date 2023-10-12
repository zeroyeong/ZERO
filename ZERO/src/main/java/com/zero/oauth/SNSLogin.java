package com.zero.oauth;

import java.util.Iterator;

import org.apache.commons.lang3.StringUtils;

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
	
	public Member getUserProfile(String code) throws Exception {
		OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
		OAuthRequest request = new OAuthRequest(Verb.GET, this.sns.getProfileUrl());
		
		oauthService.signRequest(accessToken, request);
		
		Response response = oauthService.execute(request);
		System.out.println("response = " + response);
		return parseJson(response.getBody());
	}
	
	private Member parseJson(String body) throws Exception {
		System.out.println("==================\n" + body + "====================");
		
		Member member = new Member();
			
		ObjectMapper mapper = new ObjectMapper();
		JsonNode rootNode = mapper.readTree(body);

		if(this.sns.isGoogle()) {
			String id = rootNode.get("id").asText();
			if(sns.isGoogle())
				member.setGoogleId(id);
			
			//member.setNickname(rootNode.get("displayName").asText());
			JsonNode nameNode = rootNode.path("id");
			//String name = nameNode.get("familyName").asText() + nameNode.get("givenName").asText();
			//member.setMem_name(name);
					
			member.setEmail(rootNode.get("email").asText());
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
			member.setNaverId(resNode.get("id").asText());
			member.setNickname(resNode.get("nickname").asText());
			member.setEmail(resNode.get("email").asText());
		}
			
		return member;
	}
}
