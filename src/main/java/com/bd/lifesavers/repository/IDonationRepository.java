package com.bd.lifesavers.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bd.lifesavers.domain.Donation;
@Repository
public interface IDonationRepository extends CrudRepository<Donation, Long> {

}
