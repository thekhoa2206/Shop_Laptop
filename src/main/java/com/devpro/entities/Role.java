package com.devpro.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;

@Entity
@Table(name = "tbl_roles")
public class Role extends BaseEntity implements GrantedAuthority{
	private static final long serialVersionUID = -1246332751520787944L;
	
	@Column(name = "name", length = 45, nullable = false)
	private String name;
	@Column(name = "description", length = 45, nullable = false)
	private String description;
	

	@ManyToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER, mappedBy = "roles")
	private List<User> users = new ArrayList<User>();
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String getAuthority() {
		// TODO Auto-generated method stub
		return name;
	}
	
	
}
