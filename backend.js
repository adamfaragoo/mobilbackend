const express = require('express')
const app = express()
const port = 3000
var cors = require('cors')

app.use(cors())
app.use(express.json())
app.use(express.static(('kepek')))

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
let sz='SELECT * from filmek WHERE filmek.film_cim like "%'+req.body.bevitel1+'%"';
  connection.query(sz, function (err, rows, fields) {
if (err) throw err

  console.log(rows)
  res.send(rows)
})

connection.end()
})


app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})




