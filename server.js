const express = require('express');
const {PrismaClient} = require("@prisma/client");

const prisma = new PrismaClient();
const cors = require('cors');


const redis = require('redis');

const client = redis.createClient();

   
(async () => {
    await client.connect();
})();

client.on('connect', () => console.log('Redis Client Connected'));
client.on('error', (err) => console.log('Redis Client Connection Error', err));
 

const app = express();
require('dotenv').config()
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
const client_routes = require("./Routes/ClientRoutes");

app.use(cors());


app.get('/', (req, res) => {
  res.send('Hi I am live!');
});

app.use('/clients',client_routes);

 
const PORT = process.env.PORT || 5000;


 


const start = async () => { 
  try{
  app.listen(PORT, ()=>{
            console.log(`Server is running on port ${PORT}`);
   });
  }catch(error){
            console.log(error);
  }
  };
  
  start();
  