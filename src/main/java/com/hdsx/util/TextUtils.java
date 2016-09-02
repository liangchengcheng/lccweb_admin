package com.hdsx.util;

public class TextUtils {

	public static final String LOGIN_IN = "login_in";
	public static final String ERROR_MSG = "error_msg";

	public static boolean isEmpty(String text) {

		if (text == null)
			return true;
		if (text.length() == 0)
			return true;
		else
			return false;
	}

}
