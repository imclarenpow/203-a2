/* deleting stuff */
app.get('/birds/:bird_id/delete', (req, res) => {
    const birdId = req.params.bird_id;

    // Execute the SQL DELETE statement
    const sql = 'DELETE FROM birds WHERE bird_id = ?';
    connection.query(sql, [birdId], (err, results) => {
        if (err) {
            console.error('Error deleting bird:', err);
            res.status(500).send('Error deleting bird');
        } else {
            console.log(`Bird with bird_id ${birdId} deleted`);

            // Redirect to the /birds page after deletion
            res.redirect('/birds');
        }
    });
});