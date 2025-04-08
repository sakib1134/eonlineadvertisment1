
package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.AdbookingEntity;

@Repository
public interface AdbookingRepository extends JpaRepository<AdbookingEntity, Integer> {
	
	@Query(value="select a.* , u.first_name , u.last_name from users u , advertisment a  where a.user_id = u.user_id ",nativeQuery = true)
 	List<Object[]> getAll();
 	@Query(value="select a.* , u.first_name , u.last_name from users u , advertisment a  where a.user_id = u.user_id and  a.ad_id=:ad_id",nativeQuery = true)
 	List<Object[]> getByad_id(Integer ad_id);	
 	List<AdbookingEntity> findByUserId(Integer userId);
}
