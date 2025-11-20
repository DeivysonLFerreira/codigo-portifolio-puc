# Microsserviços

Professores: Vinicius Soares, Luis Fernando Planella Gonzalez

## Ementa e Conteúdo

- Introdução: o que são microsserviços, evolução a partir de arquiteturas monolíticas e motivação para ambientes escaláveis e resilientes.
- Comunicação entre serviços: APIs como contratos, padrões de request/response, uso de message brokers (RabbitMQ, Kafka), pub/sub, filas, aspectos de persistência e idempotência.
- Resiliência: tratamento de falhas, monitoramento, replicação, escalabilidade horizontal e isolamento de falhas.
- Padronização e versões de contratos: definição clara de endpoints, contratos por OpenAPI/Swagger.
- Service discovery: Consul, containers, balanceamento e automação do registro e health check dos serviços.
- Gerenciamento de configuração: uso de variáveis de ambiente, arquivos `.env` e automação do ciclo de deploy.
- Estratégias de deploy (Blue/Green, Canary, Rollback), CI/CD e cultura DevOps integrada à entrega contínua de serviços.
- Funções como Serviço (FaaS) e Serverless: onde se aplicam, benefícios e limitações.
- Estudos de caso: loja virtual (CRUD, atualização de produtos, estoque, gerenciamento de pedidos e APIs), integração entre microsserviços.

---

## Frases dos Professores

> “A API é o contrato do serviço: clareza e versionamento são essenciais em sistemas distribuídos.”  
> **Vinicius Soares**

> “Message broker é espinha dorsal dos microsserviços com comunicação assíncrona: escale, monitore e nunca deixe virar ponto único de falha.”  
> **Luis Fernando Planella Gonzalez**

> “Cada microsserviço deve ser dono do seu dado — autonomia gera independência e escalabilidade real no sistema.”  
> **Vinicius Soares**

> “Migração de monolito para microsserviços é jornada técnica e cultural: envolve arquitetura, squads e mudança de mindset.”  
> **Luis Fernando Planella Gonzalez**

---

## Exemplos Práticos

- **Fila de Mensagens:** Integração com RabbitMQ para processar pedidos e notificações, garantindo entrega e desacoplamento.
- **API Gateway:** Roteamento centralizado para múltiplos serviços, controle de autenticação/autorização e documentação via OpenAPI.
- **Event-carried State Transfer:** Eventos de atualização que carregam o novo estado do produto, sincronizando dados e permitindo caching local.
- **Deploy contínuo:** Pipeline CI/CD automatizado, com testes, build de containers Docker e publicação em ambiente orquestrado (ex: Kubernetes).
- **Funções Serverless:** Processamento de tarefas eventuais (exemplo: resize de imagens) via AWS Lambda ou similar, com restrição de tempo/executores.

