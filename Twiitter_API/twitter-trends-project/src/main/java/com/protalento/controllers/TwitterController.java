package com.protalento.controllers;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import twitter4j.Trend;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.User;

/**
 * Singleton class
 */
public final class TwitterController {
	private static Logger logger = LogManager.getLogger();
	private static TwitterController twitterController;
	private Twitter twitter;
	private List<Trend> trends;

	/**
	 * No generar instancias y genera una instancia del objeto twitter
	 */
	private TwitterController() {
		twitter = new TwitterFactory().getInstance();
		logger.debug("se crea una instancia " + this);
	}

	/**
	 * con este metodo instaciamos la clase
	 * 
	 * @return
	 */
	public static TwitterController getTwitterController() {
		if (twitterController == null) {
			twitterController = new TwitterController();

		}
		return twitterController;
	}

	@Override
	public String toString() {
		return "TwitterController [twitter=" + twitter + "]";
	}

	public Twitter getTwitter() {
		return twitter;
	}

	public List<Trend> getTrends(int woeid) {
		try {
			trends = Arrays.asList(twitter.getPlaceTrends(woeid).getTrends()).stream()
					.filter(trend -> trend.getTweetVolume() > 0).collect(Collectors.toList());
		} catch (TwitterException e) {
			logger.error(e);
		}
		return trends;
	}

	public User getUser() {
		try {
			return twitter.verifyCredentials();
		} catch (TwitterException e) {
			logger.error(e);
		}
		return null;
	}

}
