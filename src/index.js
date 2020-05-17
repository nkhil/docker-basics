'use strict';

const express = require('express');
const app = express();

const healthcheckRouter = require('./routers/healthcheck');


app.use(express.json());
app.use(express.urlencoded({ extended: false }));

app.use('/healthcheck', healthcheckRouter);

module.exports = app;
