const pgp = require('pg-promise')();
require('dotenv').config();

// destructuring the process.env
const { PG_HOST, PG_USER, PG_PORT, PG_DATABASE } = process.env;

//create a connection object - this allows the express server to connect to the database on the database server
const cn = {
  host: PG_HOST,
  user: PG_USER,
  port: PG_PORT,
  database: PG_DATABASE
}

// create a database object
const db = pgp(cn);

// export our database object
module.exports = db;