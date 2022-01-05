select c.*, rc1.temps as rc1_temps, rc2.temps as "rc2_temps" from
  (select a.*, b.nom  as "nom_parella", b.cognoms as "cognoms_parella" 
  from runners as a right join runners as b on a.device_id=b.parella_id
   --where a.device_id=49
   order by a.device_id asc)
  as c  
  left join   
  (select rc1.device_id, rc1.control_id, geodata ->'properties'->'time' as temps from runners_controls rc1 where rc1.control_id=1 order by rc1.device_id, rc1.control_id asc) 
  as rc1
  on c.device_id =rc1.device_id
  left join   
  (select rc2.device_id, rc2.control_id, geodata ->'properties'->'time' as temps from runners_controls rc2 where rc2.control_id=2 order by rc2.device_id, rc2.control_id asc) 
  as rc2
  on c.device_id =rc2.device_id
  order by (CASE WHEN rc2.temps is not null THEN rc2.temps END, CASE WHEN rc1.temps is not null THEN  rc1.temps END )
  
  
  
select c.*, rc1.temps as rc1_temps, rc2.temps as rc2_temps from 
  (select a.*, b.nom  as nom_parella, b.cognoms as cognoms_parella 
  from runners as a right join runners as b on a.device_id=b.parella_id    
   order by a.device_id asc)
  as c  
  left join  
  (select rc1.device_id, rc1.control_id, geodata ->'properties'->'time' as temps from runners_controls rc1 where rc1.control_id=1 order by rc1.device_id, rc1.control_id asc) 
  as rc1 
  on c.device_id =rc1.device_id 
  left join    
  (select rc2.device_id, rc2.control_id, geodata ->'properties'->'time' as temps from runners_controls rc2 where rc2.control_id=2 order by rc2.device_id, rc2.control_id asc) 
  as rc2
  on c.device_id =rc2.device_id
  order by (rc2.temps)  
  