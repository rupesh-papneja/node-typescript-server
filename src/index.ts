import express = require('express');
import { ServerApp } from './server';

let port = 5001; //or from a configuration file
let api = new ServerApp(express(), port);
api.run();
console.info(`listening on ${port}`);