package com.jwt.dao;



import java.util.List;
import com.jwt.model.MasterRestroTable;
import com.jwt.model.Registration;
import com.jwt.model.Result;

public interface MasterRestroTableDao {
	public MasterRestroTable updateMasterRestroTable(MasterRestroTable masterrestrotable);
	public void saveMasterRestroTable(MasterRestroTable masterrestrotable);
	public void deleteMasterRestroTable(Integer restro_id);
	public List<MasterRestroTable> getMasterRestroTable();
	public void saveRegistration(Registration registration);
	public List<Registration> getAllUser();
	Result checkLogin(String userName, String password);
	

}
