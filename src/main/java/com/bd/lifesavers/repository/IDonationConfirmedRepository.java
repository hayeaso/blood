package com.bd.lifesavers.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bd.lifesavers.domain.DonationConfirmed;
@Repository
public interface IDonationConfirmedRepository extends CrudRepository<DonationConfirmed, Long> {

}
