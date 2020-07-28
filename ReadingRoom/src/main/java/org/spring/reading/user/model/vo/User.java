package org.spring.reading.user.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
	// 유저(멤버) 객체
	int userNo; // 사용자 코드(번호)
	String userId; // 아이디
	String userPw; // 비밀번호
	String name; // 이름
	String email; // 이메일
	String rating; // 등급(member/admin)
	String status; // 회원탈퇴여부(Y/N)
}
