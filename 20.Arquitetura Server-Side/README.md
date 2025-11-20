# Arquitetura Server-Side

Professores: Cassio Trindade e Miguel Gomes Xavier

## Ementa e Objetivos

- Compreender arquitetura server-side: papel do back-end em sistemas digitais, distinção entre client-side e server-side, evolução histórica e desafios atuais.
- Estudo dos principais frameworks e padrões: MVC (Model-View-Controller), programação assíncrona, reativa, fundamentos de APIs REST, controle de rotas, middlewares e autenticação.
- Prática com Node.js, Express e aprofundamento no framework NestJS para aplicações escaláveis e robustas.
- Integração com bancos de dados: relacional (PostgreSQL, MySQL) e não-relacional (MongoDB, GraphQL), boas práticas, escolha de estrutura e modelagem de dados.
- Testes, versionamento, documentação, segurança, monitoramento e variáveis de ambiente em ambientes de produção e homologação.
- Arquiteturas modernas: microserviços, comunicação entre serviços, mensageria, performance, escalabilidade e cloud computing.

## Principais Tópicos das Aulas

- Separação de responsabilidades: modelo, visualização, controle e benefícios para manutenção, escalabilidade e trabalho em equipe[attached_file:20-ARQUITETURA-SERVER-SIDE.txt].
- Discussão prática sobre o uso do padrão MVC no Node/Express para uma lista de tarefas, demonstrando estrutura de pastas, rotas, controllers, models e views.
- Apresentação de exemplos de rotas GET/POST/PUT/DELETE, uso do Postman para testes, boas práticas para documentação usando markdown e coleções.
- Reflexão sobre facilidades de colaboração e comunicação, impacto da arquitetura para times distribuídos e uso de diferentes tecnologias conectadas (front-ends com React, Angular, Vue, mobile nativo, etc.).
- Análise de ferramentas e ambientes (IDE, VSCode, frameworks, libraries), automação via scripts de inicialização, e importância do uso de variáveis de ambiente.
- Introdução às arquiteturas server-side rendering (SSR), client-side rendering (CSR), universal/híbridas e implicações em SEO, performance e segurança.
- Princípios de desenvolvimento seguro, repetição de código, documentação, teste automatizado e gestão de código modular e reutilizável.

## Frases dos Professores

> “O segredo de uma boa arquitetura server-side é separar claramente responsabilidades: cada camada faz uma coisa e faz bem feito.”
> 
> “Documentação, testes e automação são tão importantes quanto o código para garantir sustentabilidade e evolução dos sistemas.”
> 
> “Microserviços, mensageria e cloud trouxeram novas camadas de desafios, mas também grandes ganhos em escalabilidade e colaboração.”



## Dicas e Boas Práticas

- Planeje a arquitetura com diagramas mesmo simples, garanta alinhamento no time.
- Separe configuração de ambientes (local/homologação/produção) via variáveis, use ferramentas como dotenv.
- Garanta testes automatizados desde o início; automatize rotinas repetitivas e mantenha código modularizado.
- Utilize frameworks de acordo com as necessidades do negócio: Express para customização, NestJS para produtividade e padronização.
- Documente e versiona o projeto — organização ajuda na manutenção, colaboração e sucesso em equipes distribuídas.
