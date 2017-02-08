package com.bd.lifesavers.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.bd.lifesavers.domain.Donation;
import com.bd.lifesavers.domain.Donor;
@Repository
public interface IDonationRepository extends CrudRepository<Donation, Long> {
	@Query("select d.receiver from Donation d where d.donor= :donor")	
	List <Donor> getReceiversByDonorId(@Param("donor")Donor donor);
	
	@Query("select d.donor from Donation d where d.receiver= :receiver")
	List<Donor> getDonorsByReceiverId(@Param("receiver") Donor receiver);

}
