package com.kmj.exam.demo.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kmj.exam.demo.service.MemberService;
import com.kmj.exam.demo.util.Ut;
import com.kmj.exam.demo.vo.Member;

@Controller
public class UsrMemberController {
	private MemberService memberService;

	public UsrMemberController(MemberService memberService) {
		this.memberService = memberService;
	}

	@RequestMapping("/usr/member/doJoin")
	@ResponseBody
	public Object doJoin(String loginId, String loginPw, String name, String nickname, String cellphoneNo,
			String email) {

		if (Ut.empty(loginId)) {
			return "아이디를 입력해주세요.";
		}

		if (Ut.empty(loginPw)) {
			return "비밀번호를 입력해주세요.";
		}

		if (Ut.empty(name)) {
			return "이름을 입력해주세요.";
		}

		if (Ut.empty(nickname)) {
			return "닉네임을 입력해주세요.";
		}

		if (Ut.empty(cellphoneNo)) {
			return "전화번호를 입력해주세요.";
		}

		if (Ut.empty(email)) {
			return "이메일을 입력해주세요.";
		}

		int id = memberService.join(loginId, loginPw, name, nickname, cellphoneNo, email);

		if (id == -1) {
			return "해당 로그인 아이디는 이미 사용중입니다.";
		}

		Member member = memberService.getMemberById(id);

		return member;
	}

	@RequestMapping("/usr/member/getMembers")
	@ResponseBody
	public List<Member> getMembers() {
		return memberService.getMembers();
	}
}