const express= require('express');
const router = express.Router();

const indexController = require('../controllers/indexController'); 
router.get('/', indexController.list); 
router.get('/index.html', indexController.list); 
//router.post('/add', indexController.save); 

const productsController = require('../controllers/ropaController'); 
router.get('/ropa.html', productsController.list); 

const productPageController = require('../controllers/coleccionController'); 
router.get('/coleccion.html', productPageController.list); 

module.exports=router;