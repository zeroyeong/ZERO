package com.zero.auth;

import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;
 
@Component
public class NaverLoginBO {
	
	// ���̹� �α��� ����
	private final static String NAVER_CLIENT_ID = "ftP2BpWPuD8yQyXqmdlO";
	private final static String NAVER_CLIENT_SECRET = "q9P7LP0yWR";
	private final static String NAVER_REDIRECT_URI = "http://localhost:8080/zero/auth/naver/callback";
	
	private final static String SESSION_STATE = "naver_oauth_state";
	private final static String PROFILE_API_URL = "https://openapi.naver.com/v1/nid/me";

	public String getAuthorizationUrl(HttpSession session) {
		String state = generateRandomString();
		setSession(session, state);
		OAuth20Service oauthService = new ServiceBuilder(NAVER_CLIENT_ID)
				.apiSecret(NAVER_CLIENT_SECRET)
				.callback(NAVER_REDIRECT_URI)
				.build(NaverOAuthApi.instance());
		
		return oauthService.getAuthorizationUrl();
	}

	public OAuth2AccessToken getAccessToken(HttpSession session,
			String code, String state) throws Exception {
		String sessionState = getSession(session);
		if (StringUtils.pathEquals(sessionState, state)) {
			OAuth20Service oauthService = new ServiceBuilder(NAVER_CLIENT_ID)
					.apiSecret(NAVER_CLIENT_SECRET)
					.callback(NAVER_REDIRECT_URI)
					.build(NaverOAuthApi.instance());
			OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
			return accessToken;
		}
		return null;
	}
	
	private String generateRandomString() {
		return UUID.randomUUID().toString();
	}

	private void setSession(HttpSession session, String state) {
		session.setAttribute(SESSION_STATE, state);
	}

	private String getSession(HttpSession session) {
		return (String) session.getAttribute(SESSION_STATE);
	}
	
	public String getUserProfile(OAuth2AccessToken oauthToken) throws Exception {
		OAuth20Service oauthService = new ServiceBuilder(NAVER_CLIENT_ID)
				.apiSecret(NAVER_CLIENT_SECRET)
				.callback(NAVER_REDIRECT_URI)
				.build(NaverOAuthApi.instance());
		
		OAuthRequest request = new OAuthRequest(Verb.GET, PROFILE_API_URL);
		oauthService.signRequest(oauthToken, request);
		Response response = oauthService.execute(request);
		return response.getBody();
	}
}