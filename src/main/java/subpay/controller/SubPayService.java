package subpay.controller;

import java.util.List;

import subpay.bean.SubPayDTO;

public interface SubPayService {
	//결제
	public int pay(SubPayDTO subPayDTO);
	
	//결제확인
	public List<SubPayDTO> payCheck(String sp_mem_id);

}
