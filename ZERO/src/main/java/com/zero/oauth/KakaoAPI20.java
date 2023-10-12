package com.zero.oauth;

import com.github.scribejava.core.builder.api.DefaultApi20;

public class KakaoAPI20 extends DefaultApi20 implements SnsUrls {
	private KakaoAPI20() {
		
	}
	
	private static class InstanceHolder{
		private static final KakaoAPI20 INSTANCE = new KakaoAPI20();
	}
	
	static KakaoAPI20 instance() {
		return InstanceHolder.INSTANCE;
	}
	
	@Override
	public String getAccessTokenEndpoint() {
		// TODO Auto-generated method stub
		return KAKAO_ACCESS_TOKEN;
	}

	@Override
	protected String getAuthorizationBaseUrl() {
		// TODO Auto-generated method stub
		return KAKAO_AUTH;
	}
}
