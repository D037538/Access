package com.jwt.service;

import java.util.List;

import javax.transaction.Transactional;

import com.jwt.model.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jwt.dao.MasterRestroTableDao;
import com.jwt.model.MasterRestroTable;
import com.jwt.model.Registration;
@Service
@Transactional

public class MasterRestroTableServiceImpl implements MasterRestroTableService  {
@Autowired
MasterRestroTableDao mastertestrotabledao;
	public Result checkLogin(String userName, String userPassword) {
		Result result=new Result();
		return result= mastertestrotabledao.checkLogin(userName, userPassword);
	}

@Override
	public MasterRestroTable updateMasterRestroTable(MasterRestroTable masterrestrotable) {
		
		return mastertestrotabledao.updateMasterRestroTable(masterrestrotable);
	}

	@Override
	public void saveMasterRestroTable(MasterRestroTable masterrestrotable) {
		mastertestrotabledao.saveMasterRestroTable(masterrestrotable);
	}

	@Override
	public void deleteMasterRestroTable(Integer restro_id) {
		mastertestrotabledao.deleteMasterRestroTable(restro_id);
	}

	@Override
	public List<MasterRestroTable> getMasterRestroTable() {
				return mastertestrotabledao.getMasterRestroTable();
	}

	@Override
	public void saveRegistration(Registration registration) {
		mastertestrotabledao.saveRegistration(registration);
	}

	@Override
	public List<Registration> getAllUser() {
		// TODO Auto-generated method stub
		return mastertestrotabledao.getAllUser();
	}
	
}
