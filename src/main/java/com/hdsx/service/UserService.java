package com.hdsx.service;

import java.util.List;
import com.hdsx.entity.User;

public interface UserService {
	List<User> getUserList(int offset, int limit);

	boolean checkUser(String username, String password);
}
