package com.bd.lifesavers.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bd.lifesavers.domain.Eligibility;
@Repository
public interface IElegibilityRepository extends CrudRepository<Eligibility, Long> {

}
