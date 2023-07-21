const express = require('express');
const path = require('path');
const app = express();

// Rota para sua API
app.post('/api', (req, res) => {
  // Insira aqui o código da sua API
  res.json({ message: 'Sua API recebeu os dados: ' + JSON.stringify(req.body) });
});

// Middleware para servir os arquivos estáticos do Flutter Web
app.use(express.static(path.join(__dirname, 'build/web')));

// Rota para servir o index.html do Flutter Web
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'build/web/index.html'));
});

const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
