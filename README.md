# infra-rds-mysql-tech-challenge


### Descrição
Este projeto visa automatizar a criação de um [Amazon Relational Database Service (Amazon RDS)](https://aws.amazon.com/pt/rds/) usando [GitHub Workflow](https://docs.github.com/pt/actions) em uma conta AWS utilizando o terraform. 
 é um serviço da web que facilita a configuração, a operação e escalabilidade de um banco de dados relacional na nuvem. Ele fornece capacidade econômica e redimensionável para um banco de dados relacional padrão do setor e gerencia tarefas comuns de administração de banco de dados. O Amazon Aurora é um mecanismo de banco de dados relacional totalmente gerenciado, criado para a nuvem e compatível com MySQL e PostgreSQL. O Amazon Aurora faz parte do Amazon RDS.
## Configuração

1. **Pré-requisitos:**
    - Conta ativa na AWS.
    - Conhecimento básico de GitHub Actions.
    - Ter o [terraform](https://developer.hashicorp.com/terraform/downloads) instalado.
    - Ter o [AWS CLI](https://aws.amazon.com/pt/cli/) instalado.
  
2. **Configuração inicial:**
    - Após fazer o clone do projeto você já consegue executar os comando locais do terraform
    - Configure as [credenciais de acesso no GitHub](https://docs.github.com/pt/actions/security-guides/using-secrets-in-github-actions) para fazer o deploy em uma conta exclusiva.
  
## Estrutura do Projeto

A estrutura do projeto está composta da seguinte maneira, na pasta .github encontramos os arquivos do workflow responsavel por acionar a esteira e executar os steps, já a pasta infra estão todos os arquivos utilizado para gerar os recursos de infra estrutura. 

```
projeto/
  ├── .github/
  │   ├── workflows/
  │   │   └── infra-rds-aws.yml
  ├── infra_vpc/
      ├── data_source.tf
      ├── providers.tf
      ├── rds_db.tf
      ├── variables.tf      
```
## Fluxo de Trabalho

O fluxo do workflow usando neste projeto é o seguinte:

1. Ele executa o checkout do repositorio;
2. Faz todo o setup para utilizar o Terraform;
3. Executa a configuração das Credencias da AWS;
4. Faz o step do terraform Format;
5. Faz o step do terraform Init;
6. Faz o step do terraform Validate;
7. Faz o step do terraform Plan;
8. Faz o step do terraform Apply;
9. Faz o step do Clean do arquivo do Plan;