package com.forum.basic.user;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class SnsUserDto {
	
	private String snsType;     // SNS 타입
    private String id;          // SNS 사용자 ID
    private String name;        // 이름
    private String email;       // 이메일
	
}
