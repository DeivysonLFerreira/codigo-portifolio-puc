# Arquitetura de Software em Nuvem

Professores: Manoel Veras, Tiago Coelho Ferreto

## Ementa e Objetivos

- Fundamentos de computação em nuvem: conceitos, histórico, benefícios e desafios
- Análise das principais camadas arquiteturais: negócio, sistemas, software, dados e tecnologia; alinhamento às necessidades empresariais
- Comparativo entre arquitetura tradicional, virtualização, containers, serviços (SOA/microserviços) e abordagem cloud-native
- Modelos de implantação: nuvem pública, privada, híbrida e multi-cloud; análise de provedores (AWS, Azure, Google Cloud, nacionais)
- Multi-inquilino, elasticidade, custo sob demanda, escalabilidade, redundância, backup, automação e infraestrutura como código (IaC)
- Estudos de arquitetura de referência, SLA, governança, segurança, compliance, automação e monitoramento
- Integração DevOps: CI/CD, práticas de automação, infraestrutura reprodutível e gestão de times distribuídos
- Práticas para projeto, migração e operação de soluções cloud, incluindo estratégias de backup, escalabilidade e monitoramento proativo

---

## Frases dos Professores

> “A arquitetura em nuvem começa com o entendimento do negócio. Escalabilidade e elasticidade só têm sentido se agregam valor para o cliente.”  
> **Manoel Veras**

> “Ao planejar uma solução cloud, pense desde o início em automação, segurança e custos — a nuvem potencializa, mas também exige disciplina.”  
> **Tiago Coelho Ferreto**

> “Recursos esquecidos na nuvem continuam sendo faturados; boas práticas incluem monitoramento, alertas e revisão periódica dos ambientes.”  
> **Manoel Veras**

---

## Exemplos Práticos e Estudos de Caso

- **Migração de sistemas legados:** uso de arquitetura híbrida para migrar aplicações tradicionais de bancos para nuvem, integrando APIs, containers e soluções gerenciadas.
- **Arquitetura AWS para alta disponibilidade:** uso de VPC, EC2 AutoScaling, balanceadores, RDS Multi-AZ, S3, backups automáticos e DNS distribuído.
- **Controle de custos:** exemplos reais de planejamento usando calculadora da AWS, desligamento de instâncias e contratação sob demanda/reserva.
- **DevOps na prática:** pipeline CI/CD com automação de testes, provisionamento de ambientes via Terraform/CloudFormation e deploy contínuo seguro.

---

## Dicas e Melhores Práticas

- Planeje arquiteturas a partir das necessidades do negócio, considerando elasticidade, custo, segurança e governança
- Utilize diagramas de referência dos próprios provedores para embasar decisões técnicas
- Adote procedimentos de backup, automação, monitoração e análise de custos desde o início do ciclo do projeto
- Realize revisões regulares dos ambientes e incentive a comunicação entre equipes técnicas e de negócio
