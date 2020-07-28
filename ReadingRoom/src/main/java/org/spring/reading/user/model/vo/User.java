package org.spring.reading.user.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
	// 유저(멤버) 객체
	int mb_code; // 사용자 코드(번호)
	String mb_id; // 아이디
	String mb_pw; // 비밀번호
	String mb_name; // 이름
	String mb_email; // 이메일
	String mb_rating; // 등급(member/admin)
	String mb_status; // 회원탈퇴여부(Y/N)
}
