-- Inserts dels punts de control
SELECT control_id, geodata->'geometry'->'coordinates' AS coords, geodata->'properties'->'nom' AS nom, geodata->'properties'->'desc' AS desc FROM controls order by control_id asc
select * from controls;
select * from runners;
delete from runners_controls;
delete from controls;
delete from points;

-- Puigmal
INSERT INTO controls (control_id, geodata) VALUES (1,
'{
    "type":"Feature",
    "geometry": {
      "type":"Point","coordinates":[2.11678,42.38326,2900]},											
    "properties":{
	  "nom": "Puigmal",
      "desc": "Control de cim"      
  	}
}');

-- Núria 
INSERT INTO controls (control_id, geodata) VALUES (2,
'{
    "type":"Feature",
    "geometry": {
      "type":"Point","coordinates":[2.15303,42.39758,2000]},
    "properties":{
	  "nom": "Núria",
      "desc": "Control de sortida i arribada"      
  	}
}');
