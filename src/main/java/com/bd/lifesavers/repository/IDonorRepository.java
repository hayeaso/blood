package com.bd.lifesavers.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bd.lifesavers.domain.Donor;
@Repository
public interface IDonorRepository extends CrudRepository<Donor,Long> {

}
