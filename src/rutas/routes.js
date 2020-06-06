const express= require('express');
const router = express.Router();

const indexController = require('../controllers/indexController');
router.get('/', indexController.list);
router.get('/index.html', indexController.list);

const ropaController = require('../controllers/ropaController');
router.get('/ropa.html', ropaController.list);

const coleccionController = require('../controllers/coleccionController');
router.get('/coleccion.html', coleccionController.list);

const promoController = require('../controllers/promoController');
router.get('/promocion.html', promoController.list);

const ajuareateController = require('../controllers/ajuareateController');
router.get('/ajuareate.html', ajuareateController.list);
router.post('/add',ajuareateController.save);


const eventosController = require('../controllers/eventosController');
router.get('/eventos.html', eventosController.list);

const productPageController = require('../controllers/productPageController');
router.get('/product-page.html/:producto', productPageController.list);
router.get('/product-page.html/', productPageController.list);


const cartController = require('../controllers/cartController'); 
router.get('/add/:id_producto', cartController.add); 
router.get('/cart.html', cartController.cart); 
router.get('/cart/update/:id_producto/delete', cartController.remove); 
router.get('/cart/update/:id_producto/remove', cartController.removeOne); 
router.get('/cart/update/:id_producto/add', cartController.addOne);
router.get('/cart/response/:resp', cartController.ppResp);


module.exports=router;
