const express = require('express');
const mysql = require('mysql2/promise');
const cors = require('cors');
const axios = require('axios');
require('dotenv').config();

const app = express();
const port = process.env.PORT || 3001;

//  Middleware: CORS + JSON
app.use(cors({
  origin: 'http://34.228.44.78:3000',
  methods: ['GET', 'POST', 'DELETE'],
  credentials: false
}));
app.use(express.json());

// MySQL Connection Pool
const pool = mysql.createPool({
  host: 'dreamvacations.c2jy4428k504.us-east-1.rds.amazonaws.com',
  user: 'admin',
  password: 'Oziegbe27',
  database: 'dreamvacations',
  port: 3306,
});

//  Ensure the table exists
const createTable = async () => {
  const createTableQuery = `
    CREATE TABLE IF NOT EXISTS destinations (
      id INT AUTO_INCREMENT PRIMARY KEY,
      country VARCHAR(255) NOT NULL,
      capital VARCHAR(255),
      population BIGINT,
      region VARCHAR(255)
    );
  `;
  try {
    const connection = await pool.getConnection();
    await connection.query(createTableQuery);
    connection.release();
    console.log('Table "destinations" ensured.');
  } catch (err) {
    console.error('Error ensuring table "destinations":', err.message);
    process.exit(1);
  }
};

//  Initialize the table on server startup
createTable();

//  Routes
app.get('/api/destinations', async (req, res) => {
  try {
    const [rows] = await pool.query('SELECT * FROM destinations ORDER BY id DESC');
    res.json(rows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Internal server error' });
  }
});

app.post('/api/destinations', async (req, res) => {
  const { country } = req.body;
  try {
    const response = await axios.get(`${process.env.COUNTRIES_API_BASE_URL}/name/${encodeURIComponent(country)}`);
    const countryInfo = response.data[0];

    const [result] = await pool.query(
      'INSERT INTO destinations (country, capital, population, region) VALUES (?, ?, ?, ?)',
      [country, countryInfo.capital[0], countryInfo.population, countryInfo.region]
    );
    res.status(201).json({
      id: result.insertId,
      country,
      capital: countryInfo.capital[0],
      population: countryInfo.population,
      region: countryInfo.region
    });
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Internal server error' });
  }
});

app.delete('/api/destinations/:id', async (req, res) => {
  const { id } = req.params;
  try {
    await pool.query('DELETE FROM destinations WHERE id = ?', [id]);
    res.status(204).send();
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Internal server error' });
  }
});

//  Start Server
app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
