package com.jwt.dao;

import java.util.List;

import auth.Constants;
import auth.Helper;
import com.jwt.model.Result;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import com.jwt.model.MasterRestroTable;
import com.jwt.model.Registration;

@Repository
public class MasterRestroTableDaoImpl implements MasterRestroTableDao{
	@Autowired
	SessionFactory session;
	@Override
	public MasterRestroTable updateMasterRestroTable(MasterRestroTable masterrestrotable) {
		session.getCurrentSession().update(masterrestrotable);
		return masterrestrotable;
		}
	@Override
	public void saveMasterRestroTable(MasterRestroTable masterrestrotable) {
		session.getCurrentSession().saveOrUpdate(masterrestrotable);
		
	}
	@Override
	public void deleteMasterRestroTable(Integer restro_id) {
		MasterRestroTable masterrestrotable = (MasterRestroTable) session.getCurrentSession().load(
				MasterRestroTable.class, restro_id);
		if (null != masterrestrotable) {
			this.session.getCurrentSession().delete(masterrestrotable);
		
	}
		
	}
	@Override
	public List<MasterRestroTable> getMasterRestroTable() {
		MasterRestroTable masterrestrorable=new MasterRestroTable();

		return session.getCurrentSession().createQuery("from MasterRestroTable").list();
	}
	@Override
	public void saveRegistration(Registration registration) {

		String randomPassword =registration.getR_password();
		String password = Helper.getEncodedPassword(randomPassword);
		registration.setR_password(password);
		session.getCurrentSession().save(registration);
		}
	@Override
	public List<Registration> getAllUser() {
		return session.getCurrentSession().createQuery("from Registration").list();	}


	private Registration getUserByEmail(Session session, String email, String password) {
		Registration user = null;
		Criteria criteria = session.createCriteria(Registration.class);
		criteria.add(Restrictions.eq("r_username", email));
		user = (Registration) criteria.uniqueResult();

		return user;
	}

	@Override
	public Result checkLogin(String email, String password) {
		Session session1 = session.getCurrentSession();
		Result result = new Result();
		Registration user = getUserByEmail(session1, email, password);
		if (user != null) {
			if (new BCryptPasswordEncoder().matches(password, user.getR_password())) {

				result.setMessage("SUCCESS");
				result.setStatus(true);
				result.setResultObject(user);
			} else {
				result.setMessage("IN CORRECT PASSWORD");
				result.setStatus(false);
			}
		} else {
			result.setStatus(false);
			result.setMessage("USER NOT EXIST");
		}
		return result;
	}


	

}
