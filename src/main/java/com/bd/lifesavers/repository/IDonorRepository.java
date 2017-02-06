package com.bd.lifesavers.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.bd.lifesavers.domain.Donor;
@Repository
public interface IDonorRepository extends CrudRepository<Donor,Long> {
	
	@Query("select password from Donor d where d.username= :username ")
	public String checkLogin(@Param("username") String username);

}
