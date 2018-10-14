const express = require('express')
const bodyParser = require('body-parser')

let app = express()

app.use(bodyParser.urlencoded({extended: true}))
app.use(bodyParser.json())
app.enable('trust proxy')

app.get('/items', (req, res) => {
    let userId = req.params.userId
    let numItems = req.params.userId

    //get data

    let items = []

    res.send(items)
})



