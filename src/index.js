const express = require('express')
const bodyParser = require('body-parser')
const dbr = require('./queries/runners')
const dbt = require('./queries/tracks')
const dbc = require('./queries/controls')


const app = express()
const port = 3001

app.use(bodyParser.json())
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
)

app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*');
  res.header('Access-Control-Allow-Headers', 'Authorization, X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Allow-Request-Method');
  res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, DELETE');
  res.header('Allow', 'GET, POST, OPTIONS, PUT, DELETE');
  next();
});


app.get('/', (request, response) => {
  response.json({ info: 'Traces API - Base de dades PostgreSQL' })
})

app.get('/runners', dbr.getRunners)
app.get('/runners/:id', dbr.getRunnerById)
app.post('/runners', dbr.createRunner)
app.put('/runners/:id', dbr.updateRunner)
app.delete('/runners/:id', dbr.deleteRunner)

app.get('/temps', dbr.getRunnersTemps)

app.get('/parelles/:id', dbr.getParellaByRunnerId)
app.get('/parelles', dbr.getParelles)

app.post('/punts', dbt.setPunt)

app.get('/tracks/:id', dbt.getTrackbyDeviceId)
app.get('/tracks', dbt.getTracks)

app.get('/dispositius', dbt.getDevicesTracks)

app.post('/controls', dbc.setControl)
app.get('/controls', dbc.getControls)
app.get('/controls/:id', dbc.getControlsbyId)


app.post('/runners_controls', dbc.setRunnerControl)
app.get('/runners_controls', dbc.getRunnerControl)
//app.get('/runners_controls/:deviceId/:controlId', dbc.getRunnerControlbyDeviceId)
app.get('/runners_controls/:deviceId/:controlId', dbc.getRunnerControlbyDeviceId)


app.listen(port, () => {
  console.log(`Traces Api en execució \nhttp://localhost:${port}`)
})