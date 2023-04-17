package com.kmj.exam.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kmj.exam.demo.service.MemberService;

@Controller
public class UsrHomeController {

	private MemberService memberService;

	@RequestMapping("/usr/member/dojoin")
	@ResponseBody
	public String dojoin(String loginId, String loginPw, String name, String nickname, String cellphoneNo, String email) {

		memberService.join(loginId, loginPw, name, nickname, cellphoneNo, email);

		return "안녕하세요";
	}
}