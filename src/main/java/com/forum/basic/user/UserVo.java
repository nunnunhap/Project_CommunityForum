package com.forum.basic.user;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserVo {
    private String mbspId;          // 회원 ID
    private String mbspName;        // 회원 이름
    private String mbspEmail;       // 회원 이메일
    private String mbspPassword;    // 비밀번호 (암호화된)
    private String mbspNick;        // 닉네임
    private Date mbspLastLogin;     // 마지막 로그인 일자
    private Date mbspCreateDate;    // 생성 일자
    private Date mbspUpdateDate;    // 수정 일자
    private String snsLoginType;
	
}
