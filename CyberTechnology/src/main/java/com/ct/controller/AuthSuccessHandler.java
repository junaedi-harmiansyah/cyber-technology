package com.ct.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;

import com.ct.model.User;
import com.ct.service.UserService;

public class AuthSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {
	private static final Logger LOGGER = LogManager.getLogger(AuthSuccessHandler.class.getCanonicalName());

	@Autowired
	private UserService userService;

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		LOGGER.info("Starting onAuthenticationSuccess");
		try {
			User currentUser = userService
					.findByUsername(SecurityContextHolder.getContext().getAuthentication().getName());

			HttpSession session = request.getSession(true);
			session.setAttribute("sessionUsername", currentUser.getUsername());
			session.setAttribute("sessionId", currentUser.getId());
			session.setAttribute("sessionRole", currentUser.getRole());

			super.onAuthenticationSuccess(request, response, authentication);
		} catch (Exception e) {
			LOGGER.error(e);
		}
		LOGGER.info("Finished onAuthenticationSuccess");
	}

}