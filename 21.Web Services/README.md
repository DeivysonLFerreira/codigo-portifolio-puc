# Web Services

Professores: Cassio Trindade e Miguel Gomes Xavier

## Ementa e Objetivos

- Compreensão dos fundamentos e padrões de Web Services, sua evolução e papel fundamental na integração de sistemas modernos e distribuídos.
- Estudo aprofundado dos protocolos SOAP e REST: diferenças, aplicações, vantagens e desvantagens.
- Análise do XML e JSON como formatos de troca de dados — entendimento da estrutura, exemplos e práticas de modelagem.
- Construção, consumo e teste de web services usando métodos HTTP: GET, POST, PUT, DELETE (CRUD).
- Princípios de interoperabilidade, padronização (W3C), protocolos abertos, interface machine-to-machine, segurança e autenticação.
- Estratégias de integração de sistemas legados, microserviços e cloud computing com APIs e serviços web.
- Aplicação prática em Node.js, consumo de APIs públicas (ex: Correios, simuladores, etc) e construção de clientes e servidores.

## Conceitos-Chave Abordados

- **Web Service:** Software independente, fracamente acoplado, projetado para expor funcionalidades através de padrões de protocolos como HTTP e troca de mensagens em XML/JSON.
- **SOAP:** Protocolo para troca estruturada de mensagens com envelope, header, body e uso obrigatório de esquemas (WSDL) definidos em XML.
- **REST:** Estilo arquitetural que utiliza métodos HTTP e opera sobre recursos identificados por URIs; foco em simplicidade, interoperabilidade e escalabilidade.
- **CRUD (Create, Read, Update, Delete):** Operações essenciais viabilizadas por métodos HTTP em APIs RESTful.
- **WSDL:** Web Service Description Language, documentação padronizada em XML descrevendo as operações disponíveis em um serviço SOAP.
- **Integração por APIs:** Uso de interfaces de comunicação padronizadas, permitindo automatizar processos, trocar dados entre aplicações distintas e criar ecossistemas de sistemas interconectados.

## Exemplos Práticos

- Integração com Correios via SOAP: consulta de CEP, busca de informações e resposta estruturada em XML por web service externo.
- Consumo de APIs REST públicas: obtenção de dados de clima, cálculo de operações matemáticas, cadastro de usuários, uso de métodos GET, POST, PUT e DELETE para manipulação de recursos.
- Construção e teste de web services em Node.js e JavaScript, usando frameworks como Express e axios, com análise de request/response e uso do Postman para simulações e validações.

## Dicas e Boas Práticas

- Sempre consulte a documentação (W3C, W3CSchools) para padrões aceitos e recomendações de implementação de web services.
- Use IDEs modernas para modelagem e testes (WebStorm, VSCode) e ferramentas de teste de API como Postman.
- Lembre que protocolos devem ser escolhidos conforme os requisitos do negócio, volume esperado de dados e integração com ambientes legados.
- Garanta que suas mensagens estejam corretamente estruturadas (ex: XML bem-formado, JSON sintaticamente válido) para assegurar interoperabilidade.
- Documente as APIs e exponha exemplos de payloads, métodos, status codes e mensagens de erro para facilitar a adoção por terceiros.
