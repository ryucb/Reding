package org.spring.reading.user.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.spring.reading.user.model.dao.UserDao;
import org.spring.reading.user.model.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao dao;
	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public User selectUserId(String userId) {
		return dao.selectUserId(session, userId);
	}

}
