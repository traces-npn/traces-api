const Pool = require('pg').Pool
const config = require('../config.js');

const pool = new Pool({
  user: config.USER,
  host: config.LOCALHOST,
  database: config.DATABASE,
  password: config.PASSWORD,
  port: config.PORT,
})

const getRunners = (request, response) => {
//  pool.query('SELECT * FROM runners ORDER BY runner_id ASC', (error, results) => {
  //cont query='SELECT * FROM runners ORDER BY runner_id ASC';
  const query='select a.*, b.nom  as "nom_parella", b.cognoms as "cognoms_parella" from runners as a right join runners as b on a.device_id=b.parella_id order by device_id asc';
  pool.query(query, (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}

const getRunnerById = (request, response) => {
  const id = parseInt(request.params.id)
  //const query='SELECT * FROM runners WHERE runner_id = $1';  
  const query='select a.*, b.nom  as "nom_parella", b.cognoms as "cognoms_parella" from runners as a right join runners as b on a.device_id=b.parella_id where a.device_id=$1 order by a.device_id asc';
  
  pool.query(query, [id], (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}

const getParellaByRunnerId = (request, response) => {
  const id = parseInt(request.params.id)

  pool.query('SELECT * FROM runners WHERE parella_id = $1', [id], (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}

const getRunnersTemps = (request, response) => {
// corredors amb el temps de pas per cada control.
  const query=
  `select c.*, rc1.temps as rc1_temps, rc2.temps as rc2_temps from 
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
  order by 
    (CASE WHEN rc2.temps is not null THEN rc2.temps END, 
     CASE WHEN rc1.temps is not null THEN  rc1.temps END )`;

  pool.query(query, (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}

const getParelles = (request, response) => {
  
  pool.query('select device_id,parella_id from runners', (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}

const createRunner = (request, response) => {
  const { device_id, nom, cognoms, parella_id } = request.body

  pool.query('INSERT INTO runners (device_id, nom, cognoms, parella_id) VALUES ($1, $2, $3, $4)', [device_id, nom, cognoms, parella_id], (error, results) => {
    if (error) {
      throw error
    }
    //response.status(201).send(`User added with ID: ${result.insertId}`)
    //response.status(201).send(`Corredor afegit:  ${device_id} ${nom} ${cognoms} ${parella_id}\n`)
    response.status(201).send(request.body)
  })
}

const updateRunner  = (request, response) => {
  const id = parseInt(request.params.id)
  const { name, email } = request.body

  pool.query(
    'UPDATE runners SET name = $1, email = $2 WHERE runner_id = $3',
    [name, email, id],
    (error, results) => {
      if (error) {
        throw error
      }
      response.status(200).send(`User modified with ID: ${id}\n`)
    }
  )
}

const deleteRunner = (request, response) => {
  const id = parseInt(request.params.id)

  pool.query('DELETE FROM runners WHERE runner_id = $1', [id], (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).send(`User deleted with ID: ${id}`)
  })
}

module.exports = {
  createRunner,
  getRunners,
  getRunnerById,
  getParellaByRunnerId,
  getParelles,
  updateRunner,
  deleteRunner,
  getRunnersTemps
}
