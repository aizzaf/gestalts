const express = require('express');
const cors = require('cors');

const app = express();

const { getBuku, getBukuRange2000_6000 } = require('./database');

app.use(express.json());
app.use(cors());

app.get('/bukus', async (_, res) => {
  const bukus = await getBuku();
  res.json(bukus);
});

app.get('/bukus/range2000_6000', async (_, res) => {
  const bukus = await getBukuRange2000_6000();
  res.json(bukus);
});

app.listen(3000);
