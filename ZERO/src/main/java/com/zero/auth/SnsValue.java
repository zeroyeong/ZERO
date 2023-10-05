package com.zero.auth;

public class SnsValue implements SnsUrls {
	private String service;
	
	private String clientId;
	private String clientSecret;
	private String redirectUrl;
	
	public SnsValue(String service, String clientId, String clientSecret, String redirectUrl) {
		this.service = service;
		this.clientId = clientId;
		this.clientSecret = clientSecret;
		this.redirectUrl = redirectUrl;
	}
}
