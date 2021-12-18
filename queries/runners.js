const Pool = require('pg').Pool
const config = require('../config.js');

const pool = new Pool({
  user: config.USER,
  host: config.LOCALHOST,
  database: config.DATABASE,
  password: config.PASSWORD,
  port: config.PORT,
})

const getUsers = (request, response) => {
  pool.query('SELECT * FROM runners ORDER BY runner_id ASC', (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}

const getUserById = (request, response) => {
  const id = parseInt(request.params.id)

  pool.query('SELECT * FROM runners WHERE runner_id = $1', [id], (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}

// POST
//curl --data "nom=oriole&cognoms=Graness&dorsal=605&sincro=false" http://localhost:3001/users

const createUser = (request, response) => {
  const { device_id, nom, cognoms, dorsal } = request.body

  pool.query('INSERT INTO runners (device_id, nom, cognoms, dorsal) VALUES ($1, $2, $3, $4)', [device_id, nom, cognoms, dorsal], (error, results) => {
    if (error) {
      throw error
    }
    //response.status(201).send(`User added with ID: ${result.insertId}`)
    response.status(201).send(`Corredor afegit: ${dorsal} ${device_id} ${nom} ${cognoms}\n`)
  })
}

const updateUser = (request, response) => {
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

const deleteUser = (request, response) => {
  const id = parseInt(request.params.id)

  pool.query('DELETE FROM runners WHERE runner_id = $1', [id], (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).send(`User deleted with ID: ${id}`)
  })
}

module.exports = {
  createUser,
  getUsers,
  getUserById,
  updateUser,
  deleteUser,
}
