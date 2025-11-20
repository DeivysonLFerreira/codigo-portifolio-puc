# DevOps Avançado

Professores: Castro Trindade e Marcelo Veiga Neves

## Ementa da disciplina

- Revisão dos fundamentos de DevOps: cultura, integração, entrega contínua e valor ao cliente.
- Principais práticas de DevOps avançado: automação, pipelines CI/CD complexos, uso de containers (Docker) e orquestração (Kubernetes).
- Infraestrutura como código (IaC): conceituação, vantagens, exemplos práticos com Ansible, Terraform, CloudFormation.
- Gerenciamento de configuração: automação multiplataforma, principais ferramentas e conceitos de idempotência, estado e auditoria.
- Observability & feedback contínuo: logs, métricas, tracing, dashboards, integração com Sentry, Datadog, CloudWatch, notificações via Slack/Discord.
- Ambientes escaláveis em Cloud Computing (AWS, Azure, GCP), boas práticas para gestão de acessos, segurança, deploys automatizados e rollback.
- Exemplos reais de pipelines: build, deploy, testes, versionamento, rollback e atualização automática, ambiente seguro e resiliente.
- Desafios da colaboração, times multidisciplinares e comunicação eficiente no DevOps.

---

## Frases dos Professores

> “DevOps não é ferramenta, não é cargo, nem equipe: é cultura de entrega contínua com colaboração e foco no cliente.”  
> **Castro Trindade**

> “Na era ‘software defined everything’, até a infraestrutura é programável. O mesmo profissional pode e deve orquestrar desde o código até as VMs e redes.”  
> **Marcelo Veiga Neves**

> “A principal métrica de DevOps não é quantos deploys por dia, mas o quanto sua equipe agrega valor rápido e seguro para o negócio.”  
> **Castro Trindade**

> “Automatize tarefas repetitivas, invista em observabilidade e foque no ciclo rápido de aprender com dados e melhorar processos.”  
> **Marcelo Veiga Neves**

---

## Exemplos e Práticas Destacadas

- **Exemplo de Pipeline CI/CD:**
  - Build automatizado → Testes unitários/integração → Deploy contínuo na nuvem (AWS/Azure) → Observability (logs, métricas) → Feedback no Slack/Discord.
- **Infraestrutura como código:**  
  - Scripts Terraform e CloudFormation para provisionar VMs, bancos de dados, redes e balanceadores de carga, prontos para testes automatizados.
- **Automação com Ansible:**
  - Gerenciamento remoto de múltiplos servidores via SSH, automatizando instalação de pacotes, configuração de serviços e manutenção recorrente.
- **Comandos e roteiros shell:**  
  - 40 comandos fundamentais de Linux para nivelamento: manipulação de arquivos, diagnósticos, rede, scripts e SSH.
- **Dicas de rotina:**  
  - O ciclo infinito do DevOps (planejar, construir, integrar, testar, deploy, operar, monitorar e feedback) como prática de melhoria contínua.
