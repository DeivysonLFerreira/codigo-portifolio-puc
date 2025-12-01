// servico-catalogo/server.js
const express = require('express');

const app = express();
const PORT = process.env.PORT || 3001;

app.use(express.json());

// “Banco de dados” em memória
const produtos = [
  { id: 1, nome: 'Livro de Microserviços', preco: 59.9, estoque: 10 },
  { id: 2, nome: 'Curso de Node.js', preco: 199.9, estoque: 5 },
  { id: 3, nome: 'E-book de Arquitetura', preco: 29.9, estoque: 0 }
];

// Rota de saúde (health check)
app.get('/health', (req, res) => {
  res.status(200).json({ status: 'ok', servico: 'catalogo' });
});

// Listar todos os produtos
app.get('/api/produtos', (req, res) => {
  res.json(produtos);
});

// Obter um produto por ID
app.get('/api/produtos/:id', (req, res) => {
  const id = Number(req.params.id);
  const produto = produtos.find(p => p.id === id);

  if (!produto) {
    return res.status(404).json({ erro: 'Produto não encontrado' });
  }

  res.json(produto);
});

app.listen(PORT, () => {
  console.log(`Serviço de Catálogo rodando na porta ${PORT}`);
});
