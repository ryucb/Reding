package org.spring.reading.user.model.service;

import org.spring.reading.user.model.vo.User;

public interface UserService {
	User selectUserId(String userId); // 로그인
}
