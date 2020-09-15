package subpay.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import subpay.bean.SubPayDTO;
import subpay.dao.SubPayDAO;

@Service
public class SubPayServiceImpl implements SubPayService{

	@Autowired
	private SubPayDAO subPayDAO;
	
	@Override
	public int pay(SubPayDTO subPayDTO) {
		return subPayDAO.pay(subPayDTO);
	}

	@Override
	public List<SubPayDTO> payCheck(String sp_mem_id) {
		return subPayDAO.payCheck(sp_mem_id);
	}

}
