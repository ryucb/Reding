package org.spring.reading.user.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.spring.reading.user.model.vo.User;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements UserDao {

//	로그인
	@Override
	public User selectUserId(SqlSessionTemplate session, String userId) {
		return session.selectOne("selectUserId",userId);
	}

}
