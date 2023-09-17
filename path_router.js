const express = require('express');
const pool = require('./db');
const fs = require('fs');
router = express.Router();
let ch = 0;

router.get('/', async (req, res) => {
    res.redirect('/birds')
});
router.get('/birds', async (req, res) => {
    try {
        const db = pool.promise();
        // Check if the Bird table is empty
        const [countRows, countFields] = await db.query('SELECT COUNT(*) AS count FROM Bird');
        const birdCount = countRows[0].count;

        if (birdCount === 0) {
            //just in case
            console.log('clean db');
            const sqlClean = fs.readFileSync('./sql/db_cleaner.sql', 'utf8');
            const cleanState = sqlClean.split(';').filter(statement => statement.trim() !== '');

            for(const clean of cleanState) {
                await db.query(clean);
            }

            console.log('Database not populated, running population script...');
            // Read and execute the SQL file (db_populate.sql)
            const sqlFile = fs.readFileSync('./sql/db_populate.sql', 'utf8');
            const sqlStatements = sqlFile.split(';').filter(statement => statement.trim() !== '');

            for (const sqlStatement of sqlStatements) {
                await db.query(sqlStatement);
            }

            console.log('Database populated successfully');
        }
        const status_query = `SELECT * FROM ConservationStatus`;
        const [statusRows, statusFields] = await db.query(status_query);
        const conservation_status_data = statusRows;
        // Retrieve bird and photo data
        const birdsQuery = `
        SELECT Bird.*, ConservationStatus.status_colour, Photos.filename
        FROM Bird
        INNER JOIN ConservationStatus ON Bird.status_id = ConservationStatus.status_id
        LEFT JOIN Photos ON Bird.bird_id = Photos.bird_id
        `;
        const [birdRows, birdFields] = await db.query(birdsQuery);
        const birds = birdRows;

        const photosQuery = `SELECT * FROM Photos`;


        const [photoRows, photoFields] = await db.query(photosQuery);
        const photos = photoRows;

        res.render('index', { title: 'Birds of Aotearoa', birds, status: conservation_status_data, photos });
    } catch (err) {
        console.error('Error querying the database:', err);
        res.status(500).send('Error querying the database');
    }
});
router.get('/birds/reset', async (req, res) => {
    try{
        const db = pool.promise();
        console.log('clean db');
        const sqlClean = fs.readFileSync('./sql/db_cleaner.sql', 'utf8');
        const cleanState = sqlClean.split(';').filter(statement => statement.trim() !== '');

        for(const clean of cleanState) {
            await db.query(clean);
        }

        console.log('Database not populated, running population script...');
        // Read and execute the SQL file (db_populate.sql)
        const sqlFile = fs.readFileSync('./sql/db_populate.sql', 'utf8');
        const sqlStatements = sqlFile.split(';').filter(statement => statement.trim() !== '');

        for (const sqlStatement of sqlStatements) {
            await db.query(sqlStatement);
        }

        console.log('Database populated successfully');
        res.redirect('/birds'); 
    } catch (err) {
        console.error('Error using reset:', err);
        res.status(500).send('Error using /reset');
    }
});

router.get('/birds/:bird_id/', async (req, res) => {
    const db = pool.promise();
    const id = req.params.bird_id;

    try {
        const status_query = `SELECT * FROM ConservationStatus`;
        const [statusRows, statusFields] = await db.query(status_query);
        const conservation_status_data = statusRows;

        // Fetch bird and photo data using JOIN
        const birdQuery = `
            SELECT Bird.*, Photos.filename
            FROM Bird
            LEFT JOIN Photos ON Bird.bird_id = Photos.bird_id
            WHERE Bird.bird_id = ?
        `;
        const [birdRows, birdFields] = await db.query(birdQuery, [id]);
        const bird = birdRows[0]; // Assuming the bird_id is unique

        res.render('bird_page', { title: bird.primary_name, data: id, bird, status: conservation_status_data });
    } catch (err) {
        console.error('Error fetching bird or photo data:', err);
        res.status(500).send('Error fetching bird or photo data');
    }

    });
router.get('/birds/:bird_id/delete', async (req, res) => {
    const birdId = req.params.bird_id;
    const db = pool.promise();

    try {
        // Delete photo
        await db.query('DELETE FROM Photos WHERE bird_id = ?', [birdId]);

        // Delete bird data
        await db.query('DELETE FROM Bird WHERE bird_id = ?', [birdId]);

        console.log('Bird ' + birdId + ' and associated photos deleted');
        res.redirect('/birds');
    } catch (err) {
        console.error('Error deleting bird and photos:', err);
        res.status(500).send('Error deleting bird and photos');
    }
});

router.use(async(req, res) => {
    const db = pool.promise();
    const id = req.params.bird_id;

    try {
        const status_query = `SELECT * FROM ConservationStatus`;
        const [statusRows, statusFields] = await db.query(status_query);
        const conservation_status_data = statusRows;

        // Fetch bird and photo data using JOIN
        const birdQuery = `
            SELECT Bird.*, Photos.filename
            FROM Bird
            LEFT JOIN Photos ON Bird.bird_id = Photos.bird_id
            WHERE Bird.bird_id = ?
        `;
        const [birdRows, birdFields] = await db.query(birdQuery, [id]);
        const bird = birdRows[0]; // Assuming the bird_id is unique
        res.status(404).render('404', {status: conservation_status_data, bird});
    } catch (err) {
        console.error('Error fetching bird or photo data:', err);
        res.status(500).send('Error fetching bird or photo data');
    }
  });

module.exports = router;