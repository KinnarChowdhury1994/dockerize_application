const express = require('express')
const routes = express.Router()

const healthCheckController = require('../controllers/healthCheck.controller')

routes.get('/health/', healthCheckController.healthCheck)


module.exports = routes