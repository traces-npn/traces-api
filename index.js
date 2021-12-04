const express = require('express')
const bodyParser = require('body-parser')
const dbr = require('./queries/runners')
const dbp = require('./queries/tracks')

const app = express()
const port = 3001

app.use(bodyParser.json())
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
)

app.get('/', (request, response) => {
  response.json({ info: 'Traces API - Base de dades PostgreSQL' })
})

app.get('/users', dbr.getUsers)
app.get('/users/:id', dbr.getUserById)
app.post('/users', dbr.createUser)
app.put('/users/:id', dbr.updateUser)
app.delete('/users/:id', dbr.deleteUser)

app.post('/punts', dbp.setPunt)

app.get('/tracks/:id', dbp.getTrackbyDeviceId)
app.get('/tracks', dbp.getTracks)

app.listen(port, () => {
  console.log(`Traces Api en execució \nhttp://localhost:${port}`)
})