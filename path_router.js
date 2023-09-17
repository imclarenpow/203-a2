const express = require('express');
const pool = require('./db');
const fs = require('fs');
router = express.Router();
app = express();
app.use(express.urlencoded({ extended: true }));
// this is the thing, obviously if you wanted to be safer you would store the user inputted images seperately
// but because this is an assignment we might as well just store them on the site
const multer = require('multer');
const upload = multer({ dest: 'public/images/' });

router.get('/', async (req, res) => {
    res.redirect('/birds')
});
router.get('/birds', async (req, res) => {
    try {
        const db = pool.promise();
        // if the table is empty then fill it otherwise you're just going to end up resetting the table
        // everytime you make a change or reload the page so it will look like nothings happening
        const [countRows, countFields] = await db.query('SELECT COUNT(*) AS count FROM Bird');
        const birdCount = countRows[0].count;
        if (birdCount === 0) {
            //table clearer just in case we want to reset it or something goes REALLY wrong
            console.log('cleaning db....');
            const sqlClean = fs.readFileSync('./sql/db_cleaner.sql', 'utf8');
            const cleanState = sqlClean.split(';').filter(statement => statement.trim() !== '');

            for(const clean of cleanState) {
                await db.query(clean);
            }
            console.log('running db populate...');
            // execute the populate script
            const sqlFile = fs.readFileSync('./sql/db_populate.sql', 'utf8');
            const sqlStatements = sqlFile.split(';').filter(statement => statement.trim() !== '');

            for (const sqlStatement of sqlStatements) {
                await db.query(sqlStatement);
            }
            console.log('db populated successfully');
        }
        const status_query = `SELECT * FROM ConservationStatus`;
        const [statusRows, statusFields] = await db.query(status_query);
        const conservation_status_data = statusRows;
        // pull data from the populate script
        const birdsQuery = `
            SELECT Bird.*, ConservationStatus.status_colour, Photos.filename, Photos.photographer
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
        console.error('somethings wrong with the db try using /birds/reset', err);
        res.status(500).send('Error querying the db');
    }
});
// basically a hard reset for the db, figured it a bit less of a pain of using a command every time
router.get('/birds/reset', async (req, res) => {
    try{
        const db = pool.promise();
        console.log('resetting db, deleting data');
        const sqlClean = fs.readFileSync('./sql/db_cleaner.sql', 'utf8');
        const cleanState = sqlClean.split(';').filter(statement => statement.trim() !== '');
        for(const clean of cleanState) {
            await db.query(clean);
        }
        console.log('repopulating from og script');
        const sqlFile = fs.readFileSync('./sql/db_populate.sql', 'utf8');
        const sqlStatements = sqlFile.split(';').filter(statement => statement.trim() !== '');
        for (const sqlStatement of sqlStatements) {
            await db.query(sqlStatement);
        }
        console.log('done');
        res.redirect('/birds'); 
    } catch (err) {
        console.error('Error using reset:', err);
        res.status(500).send('Error using /reset. SHIT!');
    }
});

// Create Bird Form Route
router.get('/birds/create', async (req, res) => {
    try {
      const db = pool.promise();
      const statusQuery = 'SELECT * FROM ConservationStatus';
      const [statusRows, statusFields] = await db.query(statusQuery);
      const conservationStatusList = statusRows;
  
      res.render('create', {
        title: 'Create Bird',
        status: conservationStatusList,
        bird: {}, // makes an empty bird to write data into
      });
    } catch (err) {
      console.error('try in /create:', err);
      res.status(500).send('Error fetching conservation status in /create');
    }
  });
router.post('/birds/create', upload.single('photo'), async (req, res) => {
    const {
        primary_name,
        english_name,
        scientific_name,
        order_name,
        family,
        weight,
        length,
        status_id,
        photographer,
    } = req.body;

    try {
        const db = pool.promise();
        // make a unique bird_id
        const [maxBirdIdRows, maxBirdIdFields] = await db.query('SELECT MAX(bird_id) AS max_id FROM Bird');
        const maxBirdId = maxBirdIdRows[0].max_id || 0;
        const newBirdId = maxBirdId + 1;
        // put the new bird data into the Bird table
        await db.query(
        'INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)',
        [newBirdId, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id]
        );
        if (req.file) {
        const { filename } = req.file;
        await db.query('INSERT INTO Photos (bird_id, filename, photographer) VALUES (?, ?, ?)', [
            newBirdId,
            filename,
            photographer,
        ]);
        }
        console.log(`Bird ${newBirdId} posted successfully`);
        res.redirect('/birds');
    } catch (err) {
        console.error('/create error:', err);
        res.status(500).send('/create error, check code');
    }
});   

router.get('/birds/:bird_id/', async (req, res) => {
    const db = pool.promise();
    const id = req.params.bird_id;
    try {
        const status_query = `SELECT * FROM ConservationStatus`;
        const [statusRows, statusFields] = await db.query(status_query);
        const conservation_status_data = statusRows;
        // putting photo data in bird
        const birdQuery = `
            SELECT Bird.*, Photos.filename, Photos.photographer
            FROM Bird
            LEFT JOIN Photos ON Bird.bird_id = Photos.bird_id
            WHERE Bird.bird_id = ?
        `;
        const [birdRows, birdFields] = await db.query(birdQuery, [id]);
        const bird = birdRows[0];
        res.render('bird_page', { title: bird.primary_name, data: id, bird, status: conservation_status_data });
    } catch (err) {
        console.error('/birds/bird_id error:', err);
        res.status(500).send('/birds/bird_id error');
    }
});

router.get('/birds/:bird_id/delete', async (req, res) => {
    const birdId = req.params.bird_id;
    const db = pool.promise();
    try {
        await db.query('DELETE FROM Photos WHERE bird_id = ?', [birdId]);
        await db.query('DELETE FROM Bird WHERE bird_id = ?', [birdId]);
        console.log('Bird ' + birdId + ' and photo deleted');
        res.redirect('/birds');
    } catch (err) {
        console.error('Error deleting bird and photos check /birds/:bird_id/delete', err);
        res.status(500).send('Error deleting bird and photos');
    }
});
// edit bird page
router.get('/birds/:bird_id/edit', async (req, res) => {
    const db = pool.promise();
    const id = req.params.bird_id;
    try {
        const statusQuery = 'SELECT * FROM ConservationStatus';
        const [statusRows, statusFields] = await db.query(statusQuery);
        const conservationStatusList = statusRows;
        const birdQuery = `
            SELECT Bird.*, Photos.filename, Photos.photographer
            FROM Bird
            LEFT JOIN Photos ON Bird.bird_id = Photos.bird_id
            WHERE Bird.bird_id = ?
        `;
        const [birdRows, birdFields] = await db.query(birdQuery, [id]);
        const bird = birdRows[0];

        if (!bird) {
            return res.status(404).send('Bird not found');
        }
        res.render('edit', {
            title: 'Edit Bird',
            status: conservationStatusList,
            bird,
        });
    } catch (err) {
        console.error('error at /edit get()', err);
        res.status(500).send('error at /edit get()');
    }
});
// post part of edit
router.post('/birds/:bird_id/edit', upload.single('photo'), async (req, res) => {
    const birdId = req.params.bird_id;
    const {
        primary_name,
        english_name,
        scientific_name,
        order_name,
        family,
        weight,
        length,
        status_id,
        photographer,
    } = req.body;
    try {
        const db = pool.promise();
        // Update the bird data in the database
        await db.query(
            'UPDATE Bird SET primary_name=?, english_name=?, scientific_name=?, order_name=?, family=?, weight=?, length=?, status_id=? WHERE bird_id=?',
            [primary_name, english_name, scientific_name, order_name, family, weight, length, status_id, birdId]
        );
        // Check if a new photo is uploaded and update it
        if (req.file) {
            const { filename } = req.file;
            await db.query('UPDATE Photos SET filename=?, photographer=? WHERE bird_id=?', [
                filename,
                photographer,
                birdId,
            ]);
        }
        console.log(`Bird ${birdId} edited (yay!)`);
        res.redirect(`/birds`);
    } catch (err) {
        console.error('error at /edit post()', err);
        res.status(500).send('error at /edit post()');
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
        console.error('Error with 404 (this is bad):', err);
        res.status(500).send('this is really bad');
    }
  });
module.exports = router;