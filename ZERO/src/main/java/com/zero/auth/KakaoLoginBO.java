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
public class KakaoLoginBO {

	// 카카오 로그인 정보
	private final static String KAKAO_CLIENT_ID = "2112f2d3884100169e130e968f11c394";
	private final static String KAKAO_CLIENT_SECRET = "시크리트 키";
	private final static String KAKAO_REDIRECT_URI = "/login/kakaoOauth2ClientCallback.do";
	
	private final static String SESSION_STATE = "kakao_oauth_state";
	private final static String PROFILE_API_URL = "https://kapi.kakao.com/v2/user/me";

	public String getAuthorizationUrl(HttpSession session, String serverUrl) {
		String state = generateRandomString();
		setSession(session, state);
		OAuth20Service oauthService = new ServiceBuilder(KAKAO_CLIENT_ID)
				.apiSecret(KAKAO_CLIENT_SECRET)
				.callback(serverUrl + KAKAO_REDIRECT_URI)
				.build(KakaoOAuthApi20.instance());
		return oauthService.getAuthorizationUrl();
	}

	public OAuth2AccessToken getAccessToken(HttpSession session, String code,
			String state, String serverUrl) throws Exception {
		String sessionState = getSession(session);
		if (StringUtils.pathEquals(sessionState, state)) {
			OAuth20Service oauthService = new ServiceBuilder(KAKAO_CLIENT_ID)
					.apiSecret(KAKAO_CLIENT_SECRET)
					.callback(serverUrl + KAKAO_REDIRECT_URI)
					.build(KakaoOAuthApi20.instance());
			OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
			return accessToken;
		}
		return null;
	}

	public String getUserProfile(OAuth2AccessToken oauthToken, String serverUrl) throws Exception {
		OAuth20Service oauthService = new ServiceBuilder(KAKAO_CLIENT_ID)
				.apiSecret(KAKAO_CLIENT_SECRET)
				.callback(serverUrl + KAKAO_REDIRECT_URI)
				.build(KakaoOAuthApi20.instance());
		OAuthRequest request = new OAuthRequest(Verb.GET, PROFILE_API_URL);
		oauthService.signRequest(oauthToken, request);
//		Response response = request.send();
//		return response.getBody();
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
}