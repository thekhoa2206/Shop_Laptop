package com.devpro.common;

import com.github.slugify.Slugify;

public class Utilities {
	public static String createSeoLink(final String text) {
		Slugify slg = new Slugify();
		String result = slg.slugify(text + "-" + System.currentTimeMillis());
		return result;
		}
	public static String createSeoLinkCategory(final String text) {
		Slugify slg = new Slugify();
		String result = slg.slugify(text);
		return result;
		}

}
