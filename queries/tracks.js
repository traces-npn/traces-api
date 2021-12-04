const Pool = require('pg').Pool

const pool = new Pool({
  user: 'traces',
  host: 'localhost',
  database: 'traces',
  password: 'traces',
  port: 5432,
})

/*
create table if not exists points (    	
	id bigserial NOT NULL,
   	device_id integer,	
	geodata jsonb
);	

  INSERT INTO points (geodata) VALUES ('{
    "type":"Feature",
    "geometry": {
      "type":"Point","coordinates":[2.1222648,42.3862,2900]},
    "properties":{
      "id":9,
      "time":"2021-11-17T22:34:16.000+00:00"
    }
}');									 

select * from points
SELECT geodata->'properties' AS props FROM points;
SELECT geodata->'properties'->'time' AS props FROM points;
SELECT geodata->'properties'->'id' AS props FROM points;
SELECT geodata->'geometry'->'coordinates' AS coords FROM points;
  */  


const setPunt = (request, response) => {  
  ///const geojson = request.body
  ///const device_id = 9
  const  { device_id, geojson }  = request.body
  //console.log(geojson)
  pool.query('INSERT INTO points (device_id, geodata) VALUES ($1, $2)', [device_id, geojson], (error, results) => {
    if (error) {
      throw error
    } //response.status(201).send();
    //response.status(201).send(`Punt afegit: ${device_id} ${ JSON.stringify(geojson)}`)    
    response.status(201)
  })
}

const getTrackbyDeviceId = (request, response) => {
  const device_id = parseInt(request.params.id)
  const query="SELECT geodata->'geometry'->'coordinates' AS coords, geodata->'properties'->'time' AS temps, geodata->'properties'->'alt' AS alt FROM points where device_id=$1 order by temps asc";
  //console.log(device_id)
  //pool.query("SELECT id, device_id, geodata ->'geometry'->'coordinates' AS coords, geodata->'properties'->'time' AS temps FROM points where device_id=$1", [device_id], (error, results) => {
  pool.query(query, [device_id], (error, results) => {    
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}

const getTracks = (request, response) => {
  const query="SELECT id, device_id, geodata ->'geometry'->'coordinates' AS coords, geodata->'properties'->'time' AS temps, geodata->'properties'->'alt' AS alt FROM points order by device_id, temps asc";  
    //pool.query("SELECT id, device_id, geodata ->'geometry'->'coordinates' AS coords, geodata->'properties'->'time' AS temps FROM points", (error, results) => {
  //pool.query("SELECT geodata->'geometry'->'coordinates' AS coords, geodata->'properties'->'time' AS temps FROM points", (error, results) => {
    pool.query(query, (error, results) => {    
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}

module.exports = {
  setPunt,
  getTrackbyDeviceId,
  getTracks
}
