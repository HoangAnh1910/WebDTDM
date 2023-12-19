package com.laptrinhoop.service;

public interface IMailService {
	boolean send(String to, String subject, String body, String... others);

	boolean send1(String to, String body);
}
