// servico-pedidos/server.js
const express = require('express');
const axios = require('axios');

const app = express();
const PORT = process.env.PORT || 3002;

// URL do serviço de catálogo (pode ser alterada para passar por um API Gateway)
const CATALOGO_URL = process.env.CATALOGO_URL || 'http://localhost:3001';

app.use(express.json());

// “Banco de dados” em memória
const pedidos = [];

// Rota de saúde
app.get('/health', (req, res) => {
  res.status(200).json({ status: 'ok', servico: 'pedidos' });
});

// Listar pedidos
app.get('/api/pedidos', (req, res) => {
  res.json(pedidos);
});

// Criar pedido
app.post('/api/pedidos', async (req, res) => {
  try {
    const { produtoId, quantidade } = req.body;

    if (!produtoId || !quantidade) {
      return res.status(400).json({ erro: 'produtoId e quantidade são obrigatórios' });
    }

    // Consulta o serviço de catálogo para validar o produto
    const respostaCatalogo = await axios.get(`${CATALOGO_URL}/api/produtos/${produtoId}`);
    const produto = respostaCatalogo.data;

    if (produto.estoque < quantidade) {
      return res.status(400).json({ erro: 'Estoque insuficiente' });
    }

    const pedido = {
      id: pedidos.length + 1,
      produtoId,
      quantidade,
      valorTotal: produto.preco * quantidade
    };

    pedidos.push(pedido);

    res.status(201).json(pedido);
  } catch (error) {
    if (error.response && error.response.status === 404) {
      return res.status(404).json({ erro: 'Produto não encontrado no catálogo' });
    }

    console.error(error.message);
    res.status(500).json({ erro: 'Erro ao criar pedido' });
  }
});

app.listen(PORT, () => {
  console.log(`Serviço de Pedidos rodando na porta ${PORT}`);
});
