package com.bd.lifesavers.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.bd.lifesavers.domain.BloodGroup;
import com.bd.lifesavers.domain.Donor;
@Repository
public interface IDonorRepository extends CrudRepository<Donor,Long> {
	
	@Query("select password from Donor d where d.username= :username ")
	public String checkLogin(@Param("username") String username);
	

	@Query("select d from Donor d where d.bloodGroup= :bloodGroup")	
	public List<Donor> getByBloodGroup(@Param("bloodGroup") BloodGroup name);

	@Query("select id from Donor d where d.username= :username")	
	public Long getIdByUsername(@Param("username") String username);
	


}
