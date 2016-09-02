package com.hdsx.service.impl;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hdsx.cache.RedisCache;
import com.hdsx.dao.UserDao;
import com.hdsx.entity.User;
import com.hdsx.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	private final Logger LOG = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private UserDao userDao;
	@Autowired
	private RedisCache cache;

	@Override
	public List<User> getUserList(int offset, int limit) {
		String cache_key = RedisCache.CAHCENAME+"|getUserList|"+offset+"|"+limit;
		//先去从缓存中获取
		List<User> result_cache = cache.getListCache(cache_key, User.class);
		if (result_cache == null) {
			//去数据库获取数据
			result_cache = userDao.queryAll(offset, limit);
			cache.putListCacheWithExpireTime(cache_key, result_cache, RedisCache.CAHCETIME);
			LOG.info("put cache with key:"+cache_key);
		}else{
			LOG.info("get cache with key:"+cache_key);
		}
		return result_cache;
	}

	@Override
	public boolean checkUser(String username, String password) {
		// TODO Auto-generated method stub
		return false;
	}

}
