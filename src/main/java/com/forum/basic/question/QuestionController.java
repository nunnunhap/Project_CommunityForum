package com.forum.basic.question;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/question/*")
@RequiredArgsConstructor
public class QuestionController {
	
	// DI
	public final QuestionService questionService;
	
	@GetMapping("question_write")
	public void question_write() {
		
	}
	
	@GetMapping("question_list")
	@ResponseBody
	public String question_list() {
		
		return "question";
	}
	
	
}
