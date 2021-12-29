const Pool = require('pg').Pool
const config = require('../config.js');

const pool = new Pool({
  user: config.USER,
  host: config.LOCALHOST,
  database: config.DATABASE,
  password: config.PASSWORD,
  port: config.PORT,
})

const setPunt = (request, response) => {  
  ///const geojson = request.body
  ///const device_id = 9
  const  { device_id, geojson }  = request.body
  //console.log(device_id + ":"+JSON.stringify(geojson))
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
  pool.query(query, [device_id], (error, results) => {    
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}

const getTracks = (request, response) => {
  const query="SELECT id, device_id, geodata ->'geometry'->'coordinates' AS coords, geodata->'properties'->'time' AS temps, geodata->'properties'->'alt' AS alt FROM points order by device_id, temps asc";  
    pool.query(query, (error, results) => {    
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}


const getDevicesTracks = (request, response) => {
  const query="select distinct device_id from points";
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
  getDevicesTracks,
  getTracks
}
