package subpay.controller;

import java.util.List;

import subpay.bean.SubPayDTO;

public interface SubPayService {
	//����
	public int pay(SubPayDTO subPayDTO);
	
	//����Ȯ��
	public List<SubPayDTO> payCheck(String sp_mem_id);

}
