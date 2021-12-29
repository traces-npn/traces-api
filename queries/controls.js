const Pool = require('pg').Pool
const config = require('../config.js');

const pool = new Pool({
  user: config.USER,
  host: config.LOCALHOST,
  database: config.DATABASE,
  password: config.PASSWORD,
  port: config.PORT,
})


const setControl = (request, response) => {  
  const  { control_id, geodata }  = request.body  
  pool.query('INSERT INTO controls (control_id, geodata) VALUES ($1, $2)', [control_id, geodata], (error, results) => {
    if (error) {      
      throw error
    }
    response.status(201).send(geodata)
//    response.status(201)
    
  })
}

const getControlsbyId = (request, response) => {
  const device_id = parseInt(request.params.id)  
  //const query="SELECT control_id, geodata ->'geometry'->'coordinates' AS coords, geodata->'properties'->'desc' AS desc FROM controls order by control_id asc";  
  const query="SELECT control_id, geodata->'geometry'->'coordinates' AS coords, geodata->'properties'->'nom' AS nom, geodata->'properties'->'desc' AS desc FROM controls where control_id=$1";  
  pool.query(query, [device_id], (error, results) => {    
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}

const getControls = (request, response) => {
  //const query="SELECT control_id, geodata ->'geometry'->'coordinates' AS coords, geodata->'properties'->'desc' AS desc FROM controls order by control_id asc";  
  const query="SELECT control_id, geodata->'geometry'->'coordinates' AS coords, geodata->'properties'->'nom' AS nom, geodata->'properties'->'desc' AS desc FROM controls order by control_id asc";  
    pool.query(query, (error, results) => {    
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}


const setRunnerControl = (request, response) => {  
  const  { device_id, control_id, geojson }  = request.body   
  pool.query('INSERT INTO runners_controls (device_id, control_id, geodata) VALUES ($1, $2, $3)', [device_id, control_id, geojson], (error, results) => {
    if (error) {      
      throw error
    }
    //response.status(201).send("OK")
    response.status(201)
    
  })
}

/// PENDENT REVISAR PARÀMETRES
const getRunnerControlbyDeviceId = (request, response) => {
  const device_id = parseInt(request.params.deviceId);
  const control_id = parseInt(request.params.controlId);  
  const query="select * from runners_controls where device_id=$1 and control_id=$2";    
  pool.query(query, [device_id,control_id], (error, results) => {    
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}

const getRunnerControl = (request, response) => {
  const query="select * from runners_controls";  
    pool.query(query, (error, results) => {    
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}



module.exports = {
  setControl,  
  getControlsbyId,  
  getControls,
  setRunnerControl,
  getRunnerControl,
  getRunnerControlbyDeviceId
}
