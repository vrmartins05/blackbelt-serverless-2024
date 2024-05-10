Documentação do Projeto
=======================

Este repositório contém a documentação relacionada aos diversos itens do projeto, incluindo:

*   [DEF-001.md](DEF-001.md): Descrição detalhada do núcleo da oferta de serviços.
*   [PROJ-001.md](PROJ-001.md): Modelo de plano de projeto de engajamento do cliente.
*   [TECH-001.md](TECH-001.md): Identificação de conhecimentos técnicos relevantes da AWS.
*   [RISK-001.md](RISK-001.md): Identificação e mitigação de riscos associados à oferta de serviços.
*   [SEC-001.md](SEC-001.md): Governança segura de contas da AWS.

Descrição Geral do Projeto
--------------------------

Provisionar ambiente através dos seguintes comandos Terraform:

```
terraform init
terraform plan
terraform apply
```

Após a execução do terraform e provisionamento dos serviços, será apresentado o Output contendo o nome da Stack e API Endpoint (URL que será utilizada para realziar o Ingest dos dados), como no exemplo abaixo:

```
name = "Clickstream"
outputs = tomap({
  "APIEndPoint" = "https://aaaaaaaa.execute-api.us-east-1.amazonaws.com/ingestclickstream?userid=JohnDoe&deviceid=mobile&category=footwear&subcategory=shoes"
})
```

O cliente irá submeter os seguintes dados para o Endpoint:

* customerid
* deviceid
* productid
* productcategory
* productsubcategory
* activitytype

#### Exemplo:

```
curl --request POST \
https://aaaaaaa.execute-api.us-east-1.amazonaws.com/ingestclickstream\?userid\=JohnDoe\&deviceid\=mobile\&category\=footwear\&subcategory\=shoes
```

Créditos
------------

Este projeto foi desenvolvido por [Vinícius Martins](https://github.com/vrmartins05) seguindo a documentação [Capture clickstream data using AWS serverless services](https://aws.amazon.com/pt/blogs/industries/capture-clickstream-data-using-aws-serverless-services/)