package com.protalento.tests;

import static org.junit.Assert.assertEquals;

import com.protalento.controllers.TwitterController;

import org.junit.Test;

import twitter4j.User;

// int suma(int a , int b)  5 4 = 9 
public class TwitterTest {

	@Test
	public void userTwitterTest() {
		TwitterController twitterController = TwitterController.getTwitterController();
		User user = twitterController.getUser();
		String expected = "Octavio Robleto";
		String actual = user.getName();

		assertEquals(expected, actual);
	}
}
