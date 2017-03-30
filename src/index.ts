import express = require('express');
import { ServerApp } from './server';
import process = require('process');
let port = process.env.PORT; //or from a configuration file
let api = new ServerApp(express(), port);
api.run();
console.info(`listening on ${port}`);