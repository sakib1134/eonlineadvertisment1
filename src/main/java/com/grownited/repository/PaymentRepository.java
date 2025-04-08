
package com.grownited.repository;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import com.grownited.entity.PaymentEntity;

@Repository
public interface PaymentRepository extends JpaRepository<PaymentEntity, Integer> {

	
	@Query(value="select p.* , u.first_name , u.last_name,a.adcontent from payment p,users u , advertisment a  where p.user_id = u.user_id and p.ad_id = a.ad_id",nativeQuery = true)
 	List<Object[]> getAll();
 	
	@Query(value="select p.* , u.first_name , u.last_name,a.adcontent from payment p,users u , advertisment a  where p.user_id = u.user_id and p.ad_id = a.ad_id and p.paymentid=:paymentid  ",nativeQuery = true)
 	List<Object[]> getBypaymentid (Integer paymentid );
}
