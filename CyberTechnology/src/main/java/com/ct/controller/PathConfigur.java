package com.ct.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Properties;

import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;

@Configuration
public class PathConfigur {

	public PathConfigur() throws IOException {
		//generatedFile();
	}

	private void generatedFile() throws IOException {
		File myObj = new File("C:\\ConfigProject\\db");
		if (!myObj.exists()) {
			myObj.mkdirs();
			cretaeProperti(myObj);
		}
		if (myObj == null) {
			cretaeProperti(myObj);
		}

	}


	private void cretaeProperti(File myObj) throws IOException {
		OutputStream output = new FileOutputStream(myObj + File.separator + "config.properties");
		Properties prop = new Properties();

		// set the properties value
		prop.setProperty("jdbc.driverClassName", "org.postgresql.Driver");
		prop.setProperty("jdbc.url", "jdbc:postgresql://localhost/(ganti dengan database)");
		prop.setProperty("hibernate.dialect", "PostgreSQLDialect");
		prop.setProperty("jdbc.username", "postgres");
		prop.setProperty("jdbc.password", "12345");
		prop.setProperty("hibernate.current_session_context_class", "thread");

		// save properties to project root folder
		prop.store(output, null);

	}

}
