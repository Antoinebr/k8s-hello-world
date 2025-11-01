const express = require('express');

const app = express();
const port = process.env.PORT || 3000;

// A "VERSION" variable we can change later
const VERSION = '1.0.0';

app.get('/', (req, res) => {
  res.send(`Hello from Kubernetes! Version: ${VERSION}`);
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});