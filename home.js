const express = require('express')
const app = express()
const port = 3001
var cors = require('cors');

const Pool = require('pg').Pool
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'daycare',
  // password: 'admin',
  port: 5432,
})


const getUsers = (request, response) => {
    pool.query('SELECT * FROM users', (error, results) => {
      if (error) {
        throw error
      }
      response.status(200).json(results.rows)
    })
  }

const getDaycare = (request, response) => {
pool.query('SELECT * FROM daycares', (error, results) => {
    if (error) {
    throw error
    }
    response.status(200).json(results.rows)
})
}

const getAppointments = (request, response) => {
    pool.query('SELECT * FROM appointment', (error, results) => {
      if (error) {
        throw error
      }
      response.status(200).json(results.rows)
    })
  }

app.use(cors());
app.get('/users', getUsers)
app.get('/daycare', getDaycare)
app.get('/appointments', getAppointments)
app.listen(port, () => console.log(`UnderTheWeather app listening on port ${port}!`))
