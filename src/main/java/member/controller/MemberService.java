package member.controller;

import member.bean.MemberDTO;

public interface MemberService {

	// 로그인
	public String login(String mem_id, String mem_pw1);

	// 회원가입
	public int mem_write(MemberDTO memberDTO);

	// 탈퇴
	public int mem_Delete(String mem_id);

	// 정보 수정전에 수정페이지에 값 적기 위해서 값 읽어오기.
	public MemberDTO getMember(String mem_id);

	// 회원 정보 수정
	public int modify(MemberDTO memberDTO);
	
	// 회원 정보 수정
	public int mem_delete(String mem_id);

}
