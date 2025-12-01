Microserviços – Exemplo de Catálogo e Pedidos

Este diretório contém um exemplo prático de arquitetura de microserviços inspirado na disciplina de Microserviços da pós-graduação, complementando o exemplo de API Gateway em Hapi + Consul utilizado em aula. 

O objetivo é mostrar, de forma simples, dois serviços pequenos e autônomos que se comunicam via HTTP/REST, com baixo acoplamento e foco em domínios de negócio específicos (catálogo e pedidos). 

Serviços
1. Serviço de Catálogo (servico-catalogo)
Responsável por expor uma API de consulta a produtos. 

Endpoints:

GET /health – health check do serviço.

GET /api/produtos – lista todos os produtos.

GET /api/produtos/:id – retorna um produto específico por ID.

Os dados são mantidos em memória, apenas para fins didáticos, simulando um banco de produtos com preço e estoque. 

2. Serviço de Pedidos (servico-pedidos)
Responsável por criar pedidos, consumindo o serviço de catálogo via HTTP para validar produtos e estoque.

Endpoints:

GET /health – health check do serviço.

GET /api/pedidos – lista pedidos criados.

POST /api/pedidos – cria um novo pedido a partir de:

produtoId

quantidade

Ao receber um pedido, o serviço de pedidos: 

Chama GET /api/produtos/:id no serviço de catálogo (via axios).

Verifica se o produto existe e se há estoque suficiente.

Calcula o valor total do pedido e armazena os pedidos em memória.

A URL do catálogo é configurada pela variável de ambiente CATALOGO_URL (padrão: http://localhost:3001), facilitando a integração com um API Gateway como o exemplo em Hapi/Consul da aula.

Como executar
Pré-requisito: Node.js instalado.​

Serviço de Catálogo

Entrar na pasta servico-catalogo

Executar:

npm install

npm start

O serviço ficará disponível em http://localhost:3001.

Serviço de Pedidos

Entrar na pasta servico-pedidos

Executar:

npm install

(opcional) definir CATALOGO_URL se for usar outro host/gateway

npm start

O serviço ficará disponível em http://localhost:3002.

Relação com a disciplina
Este exemplo ilustra na prática vários conceitos apresentados nas aulas de Microserviços: 

Serviços pequenos e autônomos, focados em domínios específicos (catálogo e pedidos).

Comunicação via API RESTful com JSON, usando HTTP como protocolo padronizado entre serviços.

Baixo acoplamento: o serviço de pedidos conhece apenas a API do catálogo, não o banco de dados interno.

Possibilidade de uso com um API Gateway (como o código em Hapi que registra serviços no Consul), concentrando autenticação, roteamento e resiliência. 

Esse projeto complementa o memorial ao demonstrar, em código, a aplicação de microserviços em um cenário simples de e-commerce, alinhado com as práticas recomendadas discutidas em aula (modelagem por domínio, independência de deploy e uso de HTTP/JSON entre serviços).
