package org.spring.reading.user.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.spring.reading.user.model.vo.User;

public interface UserDao {
	User selectUserId(SqlSessionTemplate session, String userId); // 로그인
}
