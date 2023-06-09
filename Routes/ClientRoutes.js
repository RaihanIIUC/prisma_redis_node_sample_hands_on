


const express = require('express');
const ClientController = require('../Controllers/ClientController');
     
const router = express.Router();



 
router.route("/").post(ClientController.storeClient);
router.route("/").get(ClientController.getTypeWiseClient);



module.exports = router;
