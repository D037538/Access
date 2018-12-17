package com.jwt.model;

import java.io.Serializable;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Where;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIdentityReference;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "rt_id")
@Entity
@Table(name="retro_table")
public class MasterRestroTable implements Cloneable, Serializable {
    /**
	* 
	*/
	private static final long serialVersionUID = 1L;
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int rt_id;
	private int rt_status;
    public int getRt_status() {
		return rt_status;
	}
	public void setRt_status(int rt_status) {
		this.rt_status = rt_status;
	}
	public int getRt_id() {
        return rt_id;
    }
    public void setRt_id(int rt_id) {
        this.rt_id = rt_id;
    }
    private String rt_no;
    private String rt_style;
    private int rt_no_chairs;
    private String rt_location;
    
    public String getRt_no() {
        return rt_no;
    }
    public void setRt_no(String rt_no) {
        this.rt_no = rt_no;
    }

    public String getRt_style() {
        return rt_style;
    }
    public void setRt_style(String rt_style) {
        this.rt_style = rt_style;
    }
    public int getRt_no_chairs() {
        return rt_no_chairs;
    }
    public void setRt_no_chairs(int rt_no_chairs) {
        this.rt_no_chairs = rt_no_chairs;
    }
    public String getRt_location() {
        return rt_location;
    }
    public void setRt_location(String rt_location) {
     this.rt_location = rt_location;
    }
   
}