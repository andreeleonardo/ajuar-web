const express= require('express');
const router = express.Router();

const indexController = require('../controllers/indexController'); 
router.get('/', indexController.list); 
router.get('/index.html', indexController.list); 
//router.post('/add', indexController.save); 

const ropaController = require('../controllers/ropaController'); 
router.get('/ropa.html', ropaController.list); 

const coleccionController = require('../controllers/coleccionController'); 
router.get('/coleccion.html', coleccionController.list); 

const promoController = require('../controllers/promoController'); 
router.get('/promocion.html', promoController.list); 

const ajuareateController = require('../controllers/ajuareateController'); 
router.get('/ajuareate.html', ajuareateController.list); 

const eventosController = require('../controllers/eventosController'); 
router.get('/eventos.html', eventosController.list); 

module.exports=router;