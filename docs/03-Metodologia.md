# Metodologia

<span style="color: red">Pré-requisitos: <a href="2-Especificação do Projeto.md"> Documentação de
Especificação</a></span>

Descreva aqui a metodologia de trabalho do grupo para atacar o problema. Definições sobre os ambiente de trabalho
utilizados pela equipe para desenvolver o projeto. Abrange a relação de ambientes utilizados, a estrutura para gestão do
código-fonte, além da definição do processo e ferramenta através dos quais a equipe se organiza (Gestão de Times).

## Controle de Versão

A ferramenta de controle de versão adotada no projeto foi o
[Git](https://git-scm.com/), sendo que o [Github](https://github.com)
foi utilizado para hospedagem do repositório.

O projeto segue a seguinte convenção para o nome de branches:

- `main`: versão estável já testada do software
- `dev`: versão de desenvolvimento e teste do software

Quanto à gerência de issues, o projeto adota a seguinte convenção para
etiquetas:

- `documentation`: melhorias ou acréscimos à documentação
- `enhancement`: uma funcionalidade precisa ser melhorada
- `feature`: uma nova funcionalidade precisa ser introduzida
- `in progress`: Para issues que estão em andamento e sendo trabalhadas

O projeto segue a seguinte convenção para as categorias de commits:

- `feat`: Novas funcionalidades ou recursos adicionados ao software.
- `docs`: Alterações na documentação do projeto.
- `fix`: Correções de bugs ou problemas no software.
- `refactor`: Refatorações de código, sem alteração de funcionalidade, apenas de estrutura e legibilidade do código.
- `style`: Alterações na formatação do código, como espaçamento, indentação, etc.
- `test`: Adição ou modificação de testes unitários, testes de integração, ou testes de aceitação.
- `chore`: Tarefas de manutenção ou outras atividades que não afetam diretamente o código de produção, sendo as ações direcionadas a atualizações de dependências utilizadas.

Para a gerência de merges o projeto segue a seguinte ordem:

- `Gerência de Merges`: As alterações no projeto são integradas por meio de pull requests revisadas por pares. Após a
  revisão e aprovação, as alterações são mescladas na branch principal do projeto, seguindo práticas recomendadas de
  merge para garantir a qualidade e integridade do código.

## Gerenciamento de Projeto

A equipe utiliza metodologias ágeis, tendo escolhido o Kanban como base para definição do processo de desenvolvimento.

### Divisão de Papéis

A equipe está organizada da seguinte maneira:

Scrum Master:

* Gilson Rodrigo Rovina Gonçalves

---

Product Owner:

* Carolina Santos Félix

---

Equipe de Desenvolvimento:

* Alberto Mario Rodrigues de Souza
* Carolina Santos Félix
* Felipe Nicolau Ferreira
* Gilson Rodrigo Rovina Gonçalves
* Lucas Siqueira Ribeiro
* Ryan Ramires de Araújo

---

Equipe de Design:

* Alberto Mario Rodrigues de Souza
* Carolina Santos Félix
* Gilson Rodrigo Rovina Gonçalves

---

### Processo

Para organização e distribuição das tarefas do projeto, a equipe está utilizando o GitHub Projects estruturado com as
seguintes listas:

**Product Backlog**: Esta é a fase inicial onde as novas tarefas são identificadas.

**Sprint Backlog**: As tarefas identificadas são adicionadas ao backlog para serem priorizadas e planejadas.

**Ready**: As tarefas no sprint backlog que estão prontas para serem trabalhadas são movidas para esta fase.

**In Progress**: As tarefas que estão atualmente sendo trabalhadas pelos membros da equipe.

**In Review**: Após a conclusão do trabalho, as tarefas são movidas para esta fase para revisão e feedback.

**Done**: As tarefas que foram revisadas e aprovadas são consideradas concluídas.

O quadro Kanban do grupo desenvolvido na ferramenta de gerenciamento de projetos está disponível através da URL do
GitHub Projects disponível na aba [Ferramentas] e é apresentado, no estado atual, na Figura `backlog-gestao-de-vacinas`.

![backlog-gestao-de-vacinas](https://github.com/user-attachments/assets/da0a428a-8e91-49f9-b8d9-20c7ebd64ba1)

### Ferramentas

Relação de Ambientes de Trabalho

Os artefatos do projeto são desenvolvidos a partir de diversas plataformas e a relação dos ambientes com seu respectivo
propósito é apresentada na tabela que se segue.

| Ambiente                           | Plataforma         | Link de Acesso                                                                                                 |
|------------------------------------|--------------------|----------------------------------------------------------------------------------------------------------------|
| Repositório de código fonte        | GitHub             | [Controle Patrimonial](https://github.com/ICEI-PUC-Minas-PMV-ADS/pmv-ads-2024-2-e2-proj-int-t5-gestao_vacinas) |
| Documentos do projeto              | Discord            | [PUCMG-EIXO2-EQUIPE1-2024](https://discord.gg/SSJEgS9W)                                                        |
| Projeto de Interface e  Wireframes | Figma              | [Repositório](https://www.figma.com/)                                                                          |
| Gerenciamento do Projeto           | GitHub Projects    | [Backlog-Gestao-de-Vacinas](https://github.com/orgs/ICEI-PUC-Minas-PMV-ADS/projects/1154)                      |
| Editor de código                   | Visual Studio Code | [Visual Studio Code](https://code.visualstudio.com/)                                                           |   |

O editor de código foi escolhido porque ele possui uma integração com o
sistema de versão. As ferramentas de comunicação utilizadas possuem
integração semelhante e por isso foram selecionadas. Por fim, para criar
diagramas utilizamos essa ferramenta por melhor captar as
necessidades da nossa solução.
