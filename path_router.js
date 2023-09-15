const express = require('express');
const pool = require('./db');
router = express.Router();

router.get('/', async (req, res) => {
    res.redirect('/birds')
});

router.get('/birds', async (req, res) => {
    conservation_status_data = []

    /* conservation status from mysql */
    const db = pool.promise();
    const status_query = `SELECT * FROM ConservationStatus;`
    try {
        const [rows, fields] = await db.query(status_query);
        conservation_status_data = rows;
    } catch (err) {
        console.error("You havent set up the database yet!");
    }
    
    /* REPLACE THE .json WITH A MYSQL DATABASE */
    const birds = require('./sql/nzbird.json');
    
    /* bind data to the view (index.ejs) */
    res.render('index', { title: 'Birds of Aotearoa', birds: birds, status: conservation_status_data });
});


module.exports = router;