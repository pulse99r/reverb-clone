const express = require('express')
const app = express() // crates an instance of express
const cors = require('cors')
app.use(express.json()) // this parses tge data into a json obkect

require('dotenv').config();

app.use(cors())

// . . . .    routes    . . . . 
const authController = require('./routes/authController');
const customerController = require('./routes/customerController');

app.get('/', (req, res) => {
  const msg = `
  Welcome to Kenti's Reverb Clone eCommerce Website!!
  `
  res.send(msg)
})

app.use('/customers',customerController)
app.post('/api/signup', authController.signup);
app.post('/app/login', authController.login);


const authenticateToken = (req, res, next) => {
  const authHeader = req.headers['authorization'];
  const token = authHeader && authHeader.split(' ')[1];
  
  if (!token) return res.status(401).json({ message: 'Access denied' });
  
  jwt.verify(token, process.env.JWT_SECRET, (err, decoded) => {
    if (err) return res.status(403).json({ message: 'Invalid token' });
    
    req.user = decoded;
    next();
  });
};


app.get('/{*any}', (req, res) => {
  res.send('The page you are looking for does not exist')
})


module.exports = app;