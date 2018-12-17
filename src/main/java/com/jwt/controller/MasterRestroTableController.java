package com.jwt.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import auth.Constants;
import auth.Helper;
import auth.JwtService;
import com.jwt.model.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.jwt.model.MasterRestroTable;
import com.jwt.model.Registration;
import com.jwt.service.MasterRestroTableService;

@Controller
public class MasterRestroTableController {
	public MasterRestroTableController() {
		System.out.println("MasterRestroTableController()");
	}
	@Autowired
	private MasterRestroTableService masterRestrotableservice;

	@Autowired
	JwtService jwtService;
	@RequestMapping(value = "/")
	public ModelAndView viewMasterRestroTable(ModelAndView model) {
		model.setViewName("Login1");

		return model;
		
	}



	@RequestMapping(value = "/Registration")
	public ModelAndView viewRegistration(ModelAndView model) {
			model.setViewName("Registration");
		return model;
		
	}


	@RequestMapping(value = "/MasterRestroTable")
	public ModelAndView MasterRestroTable(ModelAndView model) {
		model.setViewName("MasterRestroTable");
		return model;

	}
	
	@RequestMapping(value = "/saverestauranttable", method = RequestMethod.POST)
	public ModelAndView saveMasterRestroTable(@ModelAttribute("masterrestrotable") MasterRestroTable masterrestrotable) {
		System.out.println("=====Before if statement======");
		if (masterrestrotable.getRt_id()==0) {

			System.out.println("=====In a model class======");
			masterRestrotableservice.saveMasterRestroTable(masterrestrotable);
				} else {
					masterRestrotableservice.updateMasterRestroTable(masterrestrotable);
		}
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping(value = "/deleteMastersRestroTable", method = RequestMethod.GET)
	public ModelAndView deleteMasterRestroTable(HttpServletRequest request) {
		System.out.println("delete action");
		int restroid = Integer.parseInt(request.getParameter("id"));
		System.out.println("id"+restroid);
		masterRestrotableservice.deleteMasterRestroTable(restroid);
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "/inserregistration", method = RequestMethod.POST)
	public ModelAndView saveGuset(@ModelAttribute Registration registration) {
		masterRestrotableservice.saveRegistration(registration);
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping(value = "/saveuser", method = RequestMethod.POST)
	public ModelAndView getUserName(@RequestParam("r_username") String r_username ,@RequestParam("r_password") String r_password ) {
	
		List <Registration> registrationList =masterRestrotableservice.getAllUser();
		Registration register=new Registration();
			for(Registration user2:registrationList) {
				register.setR_username(user2.getR_username());
				register.setR_password(user2.getR_password());
				register.setR_id(user2.getR_id());
			
		}
			if(register.getR_username().equals(r_username)&&register.getR_password().equals(r_password))
			{
				System.out.println("Login Successful");
			}
			else
			{
				System.out.println("wrong");
			}
		
		
		
	
				return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = {"/login"}, method = RequestMethod.POST)
	public String authenticate(@Valid Registration user, BindingResult result,
							   Map model, HttpServletRequest request
	                           ) {
		if (result.hasErrors()) {
			System.out.println("Has Errors:" + result.getAllErrors());
			return "login";
		}

		Result loginResult = masterRestrotableservice.checkLogin(user.getR_username(),
				user.getR_password());
		if (loginResult.isStatus()) {
			Registration userObj = (Registration) loginResult.getResultObject();
			model.put("user", userObj);
			request.getSession().setAttribute(Constants.SESSION_USER, userObj);
			request.getSession().setAttribute(Constants.SESSION_SUB_USER, userObj);
			return "redirect:/MasterRestroTable";
		} else {
			//result.rejectValue("email", "invaliduser", loginResult.getMessage());
			return "redirect:/";
		}
	}





	@RequestMapping(value = "/add_registration", method = RequestMethod.POST)
	public ResponseEntity<Result> addUnscheduledTask(@RequestHeader(Constants.API_KEY) String apiKey,
													 @RequestHeader(Constants.AUTH_TOKEN) String jwtToken,
													 @RequestBody Registration registration) {
		Result result = new Result();
		if (Helper.isValidApiKey(apiKey)) {
			try {
				Registration currentUser = jwtService.verify(jwtToken);

				if(currentUser.getR_username().equals("405")){
					result.setMessage("Session expired, please login again");
					result.setStatus(false);
					return new ResponseEntity<>(result, HttpStatus.METHOD_NOT_ALLOWED);
				}


				masterRestrotableservice.saveRegistration(registration);
				return new ResponseEntity<>(result, HttpStatus.OK);
			} catch (Exception e) {
				e.printStackTrace();
				result.setMessage("Error occurred while updating Task");
				result.setStatus(false);
				return new ResponseEntity<>(result, HttpStatus.FORBIDDEN);
			}
		} else {
			result.setMessage("Invalid API-KEY");
			result.setStatus(false);
			return new ResponseEntity<Result>(result, HttpStatus.BAD_REQUEST);
		}
	}
	@RequestMapping(value = "/get_table", method = RequestMethod.GET)
	public ResponseEntity<Result> getTable( @RequestHeader(Constants.AUTH_TOKEN) String jwtToken){
		Result result = new Result();
		if (Helper.isValidApiKey("AUTH-TOKEN")) {
			try {
				Registration currentUser = jwtService.verify(jwtToken);

				if(currentUser.getR_username().equals("405")){
					result.setMessage("Session expired, please login again");
					result.setStatus(false);
					return new ResponseEntity<>(result, HttpStatus.METHOD_NOT_ALLOWED);
				}


				result.setResultObject(masterRestrotableservice.getMasterRestroTable());
				return new ResponseEntity<>(result, HttpStatus.OK);
			} catch (Exception e) {
				e.printStackTrace();
				result.setMessage("Error occurred while updating Task");
				result.setStatus(false);
				return new ResponseEntity<>(result, HttpStatus.FORBIDDEN);
			}
		} else {
			result.setMessage("Invalid API-KEY");
			result.setStatus(false);
			return new ResponseEntity<Result>(result, HttpStatus.BAD_REQUEST);
		}
	}

}
