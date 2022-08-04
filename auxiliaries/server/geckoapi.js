var express = require('express')
const https = require('https')
const fs = require('fs')
var cors = require('cors')
const { nextTick } = require('process')
var ip = require("ip");
var app = express()
app.use(cors())

var key = fs.readFileSync(__dirname + '/certificate/selfsigned.key')
var cert = fs.readFileSync(__dirname + '/certificate/selfsigned.crt')
var options = {
    key: key,
    cert: cert
}

function fileToJSON(filename) {
    return JSON.parse(fs.readFileSync(__dirname + filename))
}

var server = https.createServer(options, app)
var port = 3443

var requestCounter = 0
var startDate = new Date()
var lastDate = new Date()
var thisDate = new Date()

server.listen(port, function () {
    console.log('Gecko API server address: https://%s:%d', ip.address(), port);
    console.log('Set Gecko Fake API on CoinThing: http://192.168.178.0/action/set?fakegeckoserver=https://%s:%d', ip.address(), port);
})

app.get('/*', function (req, res, next) {
    ++requestCounter

    lastDate = thisDate
    thisDate = new Date()

    console.log('')
    console.log('')
    console.log('---------------------------------------------------')
    console.log('request counter: ' + requestCounter)
    seconds = ((thisDate - lastDate) / 1000)
    minutes = ((thisDate - startDate) / 1000 / 60)
    console.log(thisDate.toLocaleTimeString() + ", seconds: " + seconds + ", reqs/min: " + requestCounter / minutes)
    console.log(req.path)
    console.log(JSON.stringify(req.query))
    // console.log('user-agent: ' + req.get('user-agent'))
    proAPI = false
    if (req.query['x_cg_pro_api_key']) {
        console.log('Pro API request key: ' + req.query['x_cg_pro_api_key'])
        proAPI = true
    }

    /** /
    res.status(404).send('Sorry, cant find that');
    return
    /**/

    /** /
    if (proAPI) {
        res.status(401)
        console.log('Simulate unauthorized')
        res.send('Unauthorized');
        return
    }
    /**/

    /** /
    if ((false || !proAPI) && requestCounter % 10 == 0) {
        res.status(429)
        res.header({
            'Retry-After': 120
        })
        console.log('Simulate rate limit exceeded')
        res.send('Rate Limit Exceeded!');
        return
    }
    /**/

    next()
})


app.get('/api/v3/simple/price', function (req, res) {
    priceCoin = fileToJSON('/geckofakedata/price_coin.json')
    price = { [req.query.ids]: priceCoin }  // [req.query.ids] notation puts the variable contents as key name
    // console.log('result: ' + JSON.stringify(price))
    res.send(JSON.stringify(price))
})


app.get('/api/v3/coins/(*)/market_chart', function (req, res) {
    marketChart = fileToJSON('/geckofakedata/market_chart.json')
    // console.log('result: ' + JSON.stringify(marketChart))
    res.send(JSON.stringify(marketChart))
})


app.get('/api/v3/ping', function (req, res) {
    console.log('API ping')
    res.send(JSON.stringify({ "gecko_says": "(V3) To the Moon!" }))
})
