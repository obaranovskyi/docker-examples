import { createClient } from 'redis';

const client = createClient();

client.on('error', err => console.log('Redis Client Error', err));

// Connect
await client.connect();


// Add data to redis
await client.hSet('user-session:123', {
    name: 'John',
    surname: 'Smith',
    company: 'Redis',
    age: 29
})

// Extract data from redis
let userSession = await client.hGetAll('user-session:123');

console.log(JSON.stringify(userSession, null, 2));
