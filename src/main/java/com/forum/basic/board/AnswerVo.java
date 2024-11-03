package com.forum.basic.board;

import java.time.LocalDateTime;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AnswerVo {
    private Long answerIdx;        // 답변 고유 ID
    private Long questionIdx;      // 질문 ID
    private Long parentAnswerIdx;  // 부모 답변 ID (계층 구조)
    private String content;        // 답변 내용
    private String writer;         // 작성자
    private LocalDateTime createdAt;   // 생성 일자
    private LocalDateTime updatedAt;   // 수정 일자
	
}
