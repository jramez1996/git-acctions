const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
    res.send('¡mi primer deploy!-v3');
});
app.listen(port, () => {
    console.log(`Servidor corriendo en http://localhost:${port}`);
});