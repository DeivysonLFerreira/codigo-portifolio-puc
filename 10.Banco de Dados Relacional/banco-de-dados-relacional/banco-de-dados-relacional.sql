-- Criação das tabelas principais

CREATE TABLE autores (
  id_autor      INTEGER PRIMARY KEY,
  nome_autor    VARCHAR(100) NOT NULL
);

CREATE TABLE produtos (
  id_produto    INTEGER PRIMARY KEY,
  titulo        VARCHAR(150) NOT NULL,
  preco         DECIMAL(10,2) NOT NULL,
  categoria     VARCHAR(50)   NOT NULL
);

-- Tabela de relacionamento N:N entre autores e produtos
-- Cada linha representa um vínculo entre um autor e um produto

CREATE TABLE autores_produtos (
  id_autor      INTEGER NOT NULL,
  id_produto    INTEGER NOT NULL,
  PRIMARY KEY (id_autor, id_produto),
  FOREIGN KEY (id_autor)   REFERENCES autores(id_autor),
  FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

-- Carga de dados de exemplo

INSERT INTO autores (id_autor, nome_autor) VALUES
(1,  'Autor A'),
(2,  'Autor B'),
(3,  'Autor C'),
(4,  'Autor D'),
(5,  'Autor E'),
(6,  'Autor F'),
(7,  'Autor G'),
(8,  'Autor H'),
(9,  'Autor I'),
(10, 'Autor J'),
(11, 'Autor K'),
(12, 'Autor L'),
(13, 'Autor M'),
(14, 'Autor N'),
(15, 'Autor O'),
(16, 'Autor P'),
(17, 'Autor Q'),
(18, 'Autor R'),
(1002, 'Coautor B1'),
(1008, 'Coautor H1'),
(1012, 'Coautor B2'),
(1013, 'Coautor C1'),
(1015, 'Coautor E1');

INSERT INTO produtos (id_produto, titulo, preco, categoria) VALUES
(1,  'Produto 1',  49.90, 'Livro'),
(2,  'Produto 2',  59.90, 'Livro'),
(3,  'Produto 3',  39.90, 'Livro'),
(4,  'Produto 4',  29.90, 'Livro'),
(5,  'Produto 5',  89.90, 'Livro'),
(6,  'Produto 6',  19.90, 'E-book'),
(7,  'Produto 7',  24.90, 'E-book'),
(8,  'Produto 8',  99.90, 'Livro'),
(9,  'Produto 9',  15.90, 'E-book'),
(10, 'Produto 10', 120.00, 'Coleção');

-- Carga da tabela de relacionamento (seu arquivo autores_produtos.sql)

INSERT INTO autores_produtos VALUES (1,1);
INSERT INTO autores_produtos VALUES (2,2);
INSERT INTO autores_produtos VALUES (1002,2);
INSERT INTO autores_produtos VALUES (3,3);
INSERT INTO autores_produtos VALUES (4,4);
INSERT INTO autores_produtos VALUES (5,5);
INSERT INTO autores_produtos VALUES (6,6);
INSERT INTO autores_produtos VALUES (7,7);
INSERT INTO autores_produtos VALUES (8,8);
INSERT INTO autores_produtos VALUES (1008,8);
INSERT INTO autores_produtos VALUES (9,9);
INSERT INTO autores_produtos VALUES (10,10);
INSERT INTO autores_produtos VALUES (11,1);
INSERT INTO autores_produtos VALUES (12,2);
INSERT INTO autores_produtos VALUES (1012,2);
INSERT INTO autores_produtos VALUES (13,3);
INSERT INTO autores_produtos VALUES (1013,3);
INSERT INTO autores_produtos VALUES (14,4);
INSERT INTO autores_produtos VALUES (15,5);
INSERT INTO autores_produtos VALUES (1015,5);
INSERT INTO autores_produtos VALUES (16,6);
INSERT INTO autores_produtos VALUES (17,7);
INSERT INTO autores_produtos VALUES (18,8);

-- Consultas de exemplo usando JOIN e agregação

-- 1) Listar produtos com seus autores (INNER JOIN)

SELECT
  p.id_produto,
  p.titulo,
  a.nome_autor
FROM produtos p
INNER JOIN autores_produtos ap ON ap.id_produto = p.id_produto
INNER JOIN autores a          ON a.id_autor    = ap.id_autor
ORDER BY p.id_produto, a.nome_autor;

-- 2) Contar quantos autores cada produto possui (GROUP BY)

SELECT
  p.id_produto,
  p.titulo,
  COUNT(ap.id_autor) AS qtde_autores
FROM produtos p
LEFT JOIN autores_produtos ap ON ap.id_produto = p.id_produto
GROUP BY p.id_produto, p.titulo
ORDER BY qtde_autores DESC;

-- 3) Produtos com mais de 1 autor (HAVING)

SELECT
  p.id_produto,
  p.titulo,
  COUNT(ap.id_autor) AS qtde_autores
FROM produtos p
JOIN autores_produtos ap ON ap.id_produto = p.id_produto
GROUP BY p.id_produto, p.titulo
HAVING COUNT(ap.id_autor) > 1
ORDER BY qtde_autores DESC;

-- 4) Exemplos de filtragem por categoria

SELECT
  p.id_produto,
  p.titulo,
  p.categoria,
  p.preco
FROM produtos p
WHERE p.categoria = 'Livro'
ORDER BY p.preco DESC;
