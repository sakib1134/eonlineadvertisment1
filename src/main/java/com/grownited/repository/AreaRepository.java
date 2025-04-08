
package com.grownited.repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import com.grownited.entity.AreaEntity;


@Repository
public interface AreaRepository extends JpaRepository <AreaEntity, Integer>  {
	
	@Query(value = "select a.*,s.state_name,c.city_name from area a ,state s,city c where a.stateid = s.stateid and a.cityid = c.cityid",nativeQuery = true)
	List<Object[]> getAll();
   
	@Query(value = "select a.*,s.state_name,c.city_name from area a ,state s,city c where a.stateid = s.stateid and a.cityid = c.cityid and a.areaid=:areaid",nativeQuery = true)
	List<Object[]> getByareaid(Integer areaid);
}
