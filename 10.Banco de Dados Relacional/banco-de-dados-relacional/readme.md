Banco de Dados Relacional – Autores e Produtos
Este diretório reúne um exercício prático da disciplina Banco de Dados Relacional, modelando um cenário simples de autores e produtos (por exemplo, livros e e‑books).

A partir de um minimundo de vendas editoriais, foi construído um modelo relacional com tabelas para autores, produtos e uma tabela de associação autores_produtos que representa o relacionamento muitos‑para‑muitos entre as entidades.

Arquivo principal
banco-de-dados-relacional.sql

Criação das tabelas:

autores (chave primária id_autor, nome do autor, NOT NULL).

produtos (chave primária id_produto, título, preço e categoria com tipos adequados).

autores_produtos (chave primária composta e chaves estrangeiras para autores e produtos).

Definição de integridade referencial e cardinalidade:

Uso de PRIMARY KEY e FOREIGN KEY para garantir relacionamentos 1:N e N:N.

Respeito às restrições vistas em aula (NOT NULL, unicidade por PK e relacionamento via tabela intermediária). 

Carga de dados de exemplo:

Inserção de autores, produtos e vínculos na tabela autores_produtos, incluindo casos em que um mesmo produto possui múltiplos autores, ilustrando o relacionamento muitos‑para‑muitos. 

Consultas SQL:

JOIN entre autores, produtos e autores_produtos para listar produtos com seus autores.

GROUP BY e HAVING para contar autores por produto e identificar obras com mais de um autor.

Consultas filtrando produtos por categoria e ordenando por preço. 

Objetivos de aprendizagem
Com este exercício, foram praticados na prática os principais conceitos abordados na disciplina: 

Construção de um modelo lógico relacional a partir de um minimundo.

Definição de tipos de dados adequados (INT, VARCHAR, DECIMAL, DATE).

Implementação de chaves primárias, estrangeiras e integridade referencial.

Modelagem de relacionamentos 1:N e N:N com tabelas intermediárias.

Escrita de consultas usando JOINs, funções de agregação, GROUP BY e HAVING.

Como executar
Crie um banco vazio em seu SGBD (por exemplo, SQLite, PostgreSQL ou MySQL).

Execute o arquivo banco-de-dados-relacional.sql na ferramenta de sua preferência (console, client gráfico ou extensão de banco de dados no VS Code).

Rode as consultas do final do arquivo para explorar os dados e validar o funcionamento do modelo relacional.​

Esse exercício complementa o memorial ao demonstrar, em código, a aplicação prática dos conceitos de banco de dados relacional trabalhados ao longo da pós‑graduação.
