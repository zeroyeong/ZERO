package com.zero.auth;

public class NaverAPI20 implements SnsUrls{
	private NaverAPI20() {
		
	}
	
	private static class InstanceHolder{
		private static final NaverAPI20 INSTANCE = new NaverAPI20();
	}
	
	public static NaverAPI20 getInstance() {
		return InstanceHolder.INSTANCE;
	}
	
	public String getAccessTokenEndpoint() {
		return NAVER_ACCESS_TOKEN;
	}
	
	protected String getAuthorizationBaseUrl() {
		return NAVER_AUTH;
	}
}
