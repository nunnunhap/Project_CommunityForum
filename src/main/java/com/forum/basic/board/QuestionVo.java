package com.forum.basic.board;

import java.time.LocalDateTime;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class QuestionVo {
	private Long questionIdx;     // 질문 고유 ID
	private String title;         // 질문 제목
	private String content;       // 질문 내용
	private String writer;        // 작성자
	private LocalDateTime createdAt;  // 생성 일자
	private LocalDateTime updatedAt;  // 수정 일자
}
