const mysql = require('mysql2');

const pool = mysql
  .createPool({
    host: '127.0.0.1',
    port: 3306,
    user: 'root',
    password: 'my-secret-pw',
    database: 'test',
  })
  .promise();

//////////////////////////////////////////////// Buku //////////////////////////////////////////////////

async function getBuku() {
  const [result] = await pool.query('SELECT * FROM Buku');
  return result;
}

async function getBukuRange2000_6000() {
  const [result] = await pool.query('SELECT * FROM Buku WHERE Price_Rent BETWEEN 2000 AND 6000');
  return result;
}

//////////////////////////////////////////////// Customer //////////////////////////////////////////////////

async function getCustomer() {
  const [result] = await pool.query('SELECT * FROM Customer');
  console.log('result', result);
}

//////////////////////////////////////////////// Rent //////////////////////////////////////////////////

async function getRent() {
  const [result] = await pool.query('SELECT * FROM Rent');
  console.log('result', result);
}

module.exports = {
  getBuku,
  getBukuRange2000_6000
}