const mysql2 = require('mysql2');

/* 
 * Database Connection pool
 * allows multiple connections to be used efficiently
 */
const pool = mysql2.createPool({
    host: '127.0.0.1', // local mysql
    // host: 'cosc203VM.local', // lab machine Virtual Box
    user: 'cosc203',
    password: 'password',
    database: 'ASGN2',
    charset: 'utf8mb4',
    waitForConnections: false,
    connectionLimit: 10,
    queueLimit: 0,
    multipleStatements: true,
});

pool.on('error', (err) => {
    console.error('Error with the database connection pool:', err);
})

module.exports = pool;

