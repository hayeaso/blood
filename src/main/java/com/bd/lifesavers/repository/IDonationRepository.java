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
	@Query("select d from Donation d where d.receiver= :receiver")
	 List<Donation> getDonationsByReceiverId(@Param("receiver") Donor receiver);
	
	@Query("select d from Donation d where d.donor= :donor")
	List<Donation> getDonationsByDonorId(@Param("donor") Donor donorId);
	
	/*@Query("delete from Donation d where d.donor= :donor")
	void removeByDonorId(@Param("donor")Donor donor);
	
	@Query("delete from Donation d where d.receiver= :receiver")
	void removeByReceiverId(@Param("receiver")Donor receiver);*/
}
