package com.spring.redis.dockerize.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

@Service
public class VisitCountServiceImpl implements VisitCountService {

	@Autowired
	private RedisTemplate redisTemplate;
	
	public long incrementCount() {
		String value = (String)redisTemplate.opsForValue().get("count");
		if (null == value ) {
			value = "0"; 
		}
		long count = Long.parseLong(value) + 1;
		redisTemplate.opsForValue().set("count", count);
		return count;
	}

}
