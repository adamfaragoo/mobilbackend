const express = require('express')
const app = express()
const port = 3000
var cors = require('cors')

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.get('/filmek', (req, res) => {
  var mysql = require('mysql')
  var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'vizsgamunka'
})

connection.connect()

connection.query('SELECT * from filmek', function (err, rows, fields) {
  if (err) throw err

  console.log(rows)
  
  res.send(rows)
})

connection.end()
})

app.post('/kereses', (req, res) => {
  var mysql = require('mysql')
  var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'vizsgamunka'
})

connection.connect()
connection.query('SELECT * FROM filmek WHERE filmek.film_ev = "'+req.body.bevitel1+'"', function (err, rows, fields) { 
if (err) throw err

  console.log(rows)
  
  res.send(rows)
})

connection.end()
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})

app.use(cors())
app.use(express.json())
app.use(express.static(('kepek')))


