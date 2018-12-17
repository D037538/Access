package com.jwt.service;

import java.util.List;

import com.jwt.model.MasterRestroTable;
import com.jwt.model.Registration;
import com.jwt.model.Result;

public interface MasterRestroTableService {
	public MasterRestroTable updateMasterRestroTable(MasterRestroTable masterrestrotable);
	public void saveMasterRestroTable(MasterRestroTable masterrestrotable);
	public void deleteMasterRestroTable(Integer restro_id);
	public List<MasterRestroTable> getMasterRestroTable();
	public void saveRegistration(Registration registration);
	public List<Registration> getAllUser();
	Result checkLogin(String email, String password);
}
