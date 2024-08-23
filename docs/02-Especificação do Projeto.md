# Especificações do Projeto

<span style="color:red">Pré-requisitos: <a href="1-Documentação de Contexto.md"> Documentação de Contexto</a></span>

Definição do problema e ideia de solução a partir da perspectiva do usuário. É composta pela definição do  diagrama de personas, histórias de usuários, requisitos funcionais e não funcionais além das restrições do projeto.

Apresente uma visão geral do que será abordado nesta parte do documento, enumerando as técnicas e/ou ferramentas utilizadas para realizar a especificações do projeto

## Personas

As personas são representações fictícias dos usuários ideais da aplicação, criadas com base em pesquisas e dados reais. Elas ajudam a guiar o desenvolvimento de funcionalidades e interfaces, garantindo que as necessidades, dores e expectativas dos usuários sejam atendidas de maneira eficaz. No caso desta aplicação de gerenciamento de vacinas, as personas permitem que a equipe de desenvolvimento foque na criação de uma experiência que seja intuitiva e útil para diferentes perfis de usuários, como mães, cuidadores e idosos. 

### Persona 1: Maria Gonzaga

![image](https://github.com/user-attachments/assets/3af47a60-bbbb-41e9-a7e6-f20993a0b33e)

## Persona 2: João Antônio

![image](https://github.com/user-attachments/assets/b589792b-6249-4a23-9473-a2fd4787d2dd)

## Persona 3: Rodrigo Menezes

![image](https://github.com/user-attachments/assets/b676495b-c14a-4086-8d69-f6d458877ab2)

## Persona 4: Clara Barboza

![image](https://github.com/user-attachments/assets/ea322e13-73da-41f8-9c97-d8eafaf7be1e)

## Persona 5: Antônio Vidal

![image](https://github.com/user-attachments/assets/99b892ab-96cf-4145-9a43-ccaaf4dfe320)

## Histórias de Usuários

Com base na análise das personas foram identificadas as seguintes histórias de usuários:

|EU COMO... `PERSONA`| QUERO/PRECISO ... `FUNCIONALIDADE` |PARA ... `MOTIVO/VALOR`                 |
|--------------------|------------------------------------|----------------------------------------|
|Maria Gonzaga  | Uma forma de identificar se uma agência é realmente confiável           | Me sentir mais segura ao contratar seus serviços               |
|Maria Gonzaga       | Ter um mecanismo eficiente e rápido de comunicação                 | Que eu possa sanar todas as minhas dúvidas rapidamente |



|EU COMO... `PERSONA`| QUERO/PRECISO ... `FUNCIONALIDADE` |PARA ... `MOTIVO/VALOR`                 |
|--------------------|------------------------------------|----------------------------------------|
|João Antônio  | Uma forma de identificar se uma agência é realmente confiável           | Me sentir mais segura ao contratar seus serviços               |
|João Antônio       | Ter um mecanismo eficiente e rápido de comunicação                 | Que eu possa sanar todas as minhas dúvidas rapidamente |


|EU COMO... `PERSONA`| QUERO/PRECISO ... `FUNCIONALIDADE` |PARA ... `MOTIVO/VALOR`                 |
|--------------------|------------------------------------|----------------------------------------|
|Rodrigo Menezes  | Uma forma de identificar se uma agência é realmente confiável           | Me sentir mais segura ao contratar seus serviços               |
|Rodrigo Menezes      | Ter um mecanismo eficiente e rápido de comunicação                 | Que eu possa sanar todas as minhas dúvidas rapidamente |


|EU COMO... `PERSONA`| QUERO/PRECISO ... `FUNCIONALIDADE` |PARA ... `MOTIVO/VALOR`                 |
|--------------------|------------------------------------|----------------------------------------|
|Clara Barboza  | Uma forma de identificar se uma agência é realmente confiável           | Me sentir mais segura ao contratar seus serviços               |
|Clara Barboza      | Ter um mecanismo eficiente e rápido de comunicação                 | Que eu possa sanar todas as minhas dúvidas rapidamente |


|EU COMO... `PERSONA`| QUERO/PRECISO ... `FUNCIONALIDADE` |PARA ... `MOTIVO/VALOR`                 |
|--------------------|------------------------------------|----------------------------------------|
|Antônio Vidal  | Uma forma de identificar se uma agência é realmente confiável           | Me sentir mais segura ao contratar seus serviços               |
|Antônio Vidal     | Ter um mecanismo eficiente e rápido de comunicação                 | Que eu possa sanar todas as minhas dúvidas rapidamente |

## Requisitos

As tabelas que se seguem apresentam os requisitos funcionais e não funcionais que detalham o escopo do projeto.

### Requisitos Funcionais

|ID    | Descrição do Requisito  | Prioridade |
|------|-----------------------------------------|----|
|RF-001| A aplicação deve permitir que o usuário faça o cadastro. | ALTA | 
|RF-002| A aplicação deve permitir que o usuário inclua informações básicas como sexo, idade, entre outros.    | ALTA |
|RF-003| A aplicação deve permitir que o usuário faça login utilizando suas credenciais cadastradas. | ALTA |
|RF-004| A aplicação deve permitir que o usuário crie perfis de outros familiares.    | ALTA |
|RF-005| A aplicação deve permitir que o usuário gerencie perfis dos familiares.    | ALTA |
|RF-006| A aplicação deve permitir que o usuário registre as vacinas tomadas e os detalhes como, nome, data, local, responsável e outros. | ALTA |
|RF-007| A aplicação deve permitir que o usuário personalize o cartão de vacina conforme necessidade específicas anexando vacinas adicionais. | ALTA |
|RF-008| A aplicação deve permitir que o usuário visualize o calendário vacinal com base na idade, gênero e histórico de vacinas.    | MÉDIA |
|RF-009| A aplicação deve permitir que o usuário modifique o regristro de vacinas nos perfis disponíveis.    | MÉDIA |
|RF-010| A aplicação deve permitir que o usuário consiga recuperar sua senha.    | MÉDIA |
|RF-011| A aplicação deve mostrar ao usuário de forma dinâmica a situação das vacinas, sendo verde - aplicada; amarelo - próximo do prazo; cinza - futuras.    | MÉDIA |
|RF-012| A aplicação deve enviar notificações e/ou lembretes ao usuários de vacinas próximas ou doses de reforço.    | BAIXA |
|RF-013| A aplicação deve permitir que o usuário acrescente informações ou anotações importantes em cada card de vacina, por exemplo efeitos colaterais. | BAIXA |


### Requisitos não Funcionais

|ID     | Descrição do Requisito  |Prioridade |
|-------|-------------------------|----|
|RNF-001| A aplicação deve ser responsiva, garantindo uma visualização adequada em dispositivos de diferentes tamanhos e formatos; | ALTA | 
|RNF-002| A aplicação deve ser projetada de forma a ser acessível nos principais navegadores, incluindo Google Chrome, Mozilla Firefox, Microsoft Edge, Opera e Safari; |  ALTA | 
|RNF-003| A aplicação deve garantir segurança e privacidade das informações dos usuários; | ALTA | 
|RNF-004| A aplicação deve ser publicada em um ambiente acessível publicamente na Internet; |  MEDIA | 
|RNF-005| A aplicação deve garantir um bom nível de contraste entre os elementos da tela. |  MEDIA | 


## Restrições

O projeto está restrito pelos itens apresentados na tabela a seguir.

|ID| Restrição                                             |
|--|-------------------------------------------------------|
|01| O projeto deverá ser entregue até o final do semestre |
|02| Não pode ser desenvolvido um módulo de backend        |


Enumere as restrições à sua solução. Lembre-se de que as restrições geralmente limitam a solução candidata.

> **Links Úteis**:
> - [O que são Requisitos Funcionais e Requisitos Não Funcionais?](https://codificar.com.br/requisitos-funcionais-nao-funcionais/)
> - [O que são requisitos funcionais e requisitos não funcionais?](https://analisederequisitos.com.br/requisitos-funcionais-e-requisitos-nao-funcionais-o-que-sao/)

## Diagrama de Casos de Uso

O diagrama de casos de uso é o próximo passo após a elicitação de requisitos, que utiliza um modelo gráfico e uma tabela com as descrições sucintas dos casos de uso e dos atores. Ele contempla a fronteira do sistema e o detalhamento dos requisitos funcionais com a indicação dos atores, casos de uso e seus relacionamentos. 

As referências abaixo irão auxiliá-lo na geração do artefato “Diagrama de Casos de Uso”.

> **Links Úteis**:
> - [Criando Casos de Uso](https://www.ibm.com/docs/pt-br/elm/6.0?topic=requirements-creating-use-cases)
> - [Como Criar Diagrama de Caso de Uso: Tutorial Passo a Passo](https://gitmind.com/pt/fazer-diagrama-de-caso-uso.html/)
> - [Lucidchart](https://www.lucidchart.com/)
> - [Astah](https://astah.net/)
> - [Diagrams](https://app.diagrams.net/)
