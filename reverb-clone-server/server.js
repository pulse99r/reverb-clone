const app = require('./app')
require('dotenv').config() // adds environment configuration

const PORT = process.env.PORT

app.listen(PORT,()=>{ //listens for a request at a specific port
  console.log(`Reverb Clone Server is Listening on PORT: ${PORT}`)
}) 