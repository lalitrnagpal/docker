package com.spring.redis.dockerize.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.GenericToStringSerializer;

@Configuration
@ComponentScan("com.example.spring.redis")
public class MySpringConfig {

    @Bean
    JedisConnectionFactory jedisConnectionFactory() {
    	JedisConnectionFactory jedisConnectionFactory = new JedisConnectionFactory();
    	jedisConnectionFactory.getPoolConfig().setMaxIdle(30);
    	jedisConnectionFactory.setHostName("redis-server");
    	jedisConnectionFactory.getPoolConfig().setMinIdle(10);
        return jedisConnectionFactory;
    }

    @Bean
    public RedisTemplate<String, Object> redisTemplate() {
        final RedisTemplate<String, Object> template = new RedisTemplate<String, Object>();
        template.setConnectionFactory(jedisConnectionFactory());
        template.setValueSerializer(new GenericToStringSerializer<Object>(Object.class));
        return template;
    }

}