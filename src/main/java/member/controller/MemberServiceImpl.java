package member.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import member.bean.MemberDTO;
import member.dao.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public String login(String mem_id, String mem_pw1) {
		return memberDAO.login(mem_id,mem_pw1);
	}

	@Override
	public int mem_write(MemberDTO memberDTO) {
		return memberDAO.mem_write(memberDTO);
	}

	@Override
	public int mem_Delete(String mem_id) {
		return memberDAO.mem_Delete(mem_id);
	}

	@Override
	public MemberDTO getMember(String mem_id) {
		return memberDAO.getMember(mem_id);
	}

	@Override
	public int modify(MemberDTO memberDTO) {	
		return memberDAO.modify(memberDTO);
	}

	@Override
	public int mem_delete(String mem_id) {
		return memberDAO.mem_Delete(mem_id);
	}
}
