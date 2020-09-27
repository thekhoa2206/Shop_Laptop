package com.devpro.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devpro.entities.Category;
import com.devpro.entities.Role;


@Repository 
public interface RoleRepo extends JpaRepository<Role, Integer> {

}