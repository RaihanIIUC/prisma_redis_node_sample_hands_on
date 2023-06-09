
const { PrismaClient, Prisma } = require('@prisma/client');
const prisma = new PrismaClient();
const redis = require('redis');

const client = redis.createClient();

class ClientController {

           setRedisCache = async (jsonData,type) => {
                    const value = JSON.stringify({ isCached: "yes", data: jsonData });
                    await client.connect();
                    await client.set("client"+type, value);
                    console.log(type,'from set type');
                    return client.disconnect();
                  };
           getRedisCache = async (typewise) => {
                    await client.connect();
                    const cachedData = await client.get("client"+typewise);
                    console.log(typewise,'typewise');
                    await client.disconnect();
                    return cachedData;
                  };

                  deleteRedisCache = async (typewise) => {
                    await client.connect();
                    await client.del("client"+typewise);
                    console.log(typewise,'typewise');
                    await client.disconnect();
                   };
                  

          storeClient = async (req, res) => {
                    const data = req.body;
                    try {
                              console.log(data);
                              const client = await prisma.client.create({ data });
                              await this.deleteRedisCache(data.type);
                              return res.status(201).json(client);
                    } catch (err) {
                              return res.status(500).json({ type: err.name, message: err.errors });
                    }

          }

            getData = async (type) => {
                    const clients = await prisma.client.findMany({
                              where:
                     {
                              type: type
                              }
                    });
                    console.log(clients,'cleint');
                    return clients;
                  };

          getTypeWiseClient = async (req, res) => {
                    console.log(req.query.client_type);
                    let type = req.query.client_type; 
                  
                    const cachedData = await this.getRedisCache(type);

                    if(cachedData){
                              const results = JSON.parse(cachedData);
                              res.status(200).json({ message: "success", ...results });
                              return;
                    }else{
                     const  data = await this.getData(type);
                     await this.setRedisCache(data,type);
                     res.status(200).json({ message: "success", isCached: "no", data });
                    }
           }

}


module.exports = new ClientController();