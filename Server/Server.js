const express = require('express')
const bodyParser = require('body-parser')

let app = express()

app.use(bodyParser.urlencoded({extended: true}))

app.get('/items', (req, res) => {
    let userId = req.userId
    let numItems = req.num

    //get data

    let items = []

    res.send(items)
})



