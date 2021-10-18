const express = require('express')
var cors = require('cors')
const app = express()
const port = 3000


app.use(cors())
app.use(express.json());


app.get('/cars', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'auto'
    })
    
    connection.connect()
    
    connection.query('SELECT * FROM cars', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows);
      res.send(rows);
    })
    
    connection.end()
})


app.post('/felvitel_cars', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'auto'
    })
    
    connection.connect()
    

    connection.query('INSERT INTO cars  VALUES (NULL,"'+req.body.marka+'", "'+req.body.tipus+'", "'+req.body.szin+'", '+req.body.gyartasiev+', '+req.body.ar+');', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows);
      res.send(rows);
    })
    
    connection.end()
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})