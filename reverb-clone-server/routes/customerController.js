const express = require('express') // initialize the express object
const customerController = express.Router() // instance of an express router
const db = require('../models/dbConfig') // mport database object

// * * * *  ROUTES * * * *
// * * ALL USERS
customerController.get('/', async (req, res) => {
  try {
    const customers = await db.any('SELECT * FROM rc_customers')
    res.status(200).json(customers)
  } catch (error){
    res.status(400).json({error: 'Customer Server not responding'})
  }
});
/*
// * * SINGLE customer
customerController.get('/:id', async (req, res) => {
  // const id = req.params.id
   const {id} = req.params
  try {
    const customer = await db.any('SELECT * FROM rc_customers WHERE id=$1',[id])
    res.status(200).json(customer)
  } catch (error){
    res.status(400).json({error: 'Server not responding'})
  }
});
*/


module.exports = customerController;