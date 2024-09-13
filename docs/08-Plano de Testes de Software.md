# Plano de Testes de Software

<span style="color:red">Pré-requisitos: <a href="2-Especificação do Projeto.md"> Especificação do Projeto</a></span>, <a href="3-Projeto de Interface.md"> Projeto de Interface</a>

Segue apresentação os cenários de testes utilizados na realização dos testes da sua aplicação. Os cenários demonstram os requisitos sendo satisfeitos.

 
| **Caso de Teste** 	| **CT-01 – Cadastrar perfil** 	|
|:---:	|:---:	|
|	Requisito Associado 	| RF-001 - A aplicação deve permitir que o usuário faça o autocadastro e gerencie seus dados, incluindo informações básicas como nome completo, idade, sexo, data de nascimento e endereço. |
| Objetivo do Teste 	| Verificar se o usuário consegue se cadastrar na aplicação. |
| Passos 	| - Acessar o navegador <br> - Informar o endereço do site https://imuniti... - Clicar em "Crie sua conta" <br> - Preencher os campos obrigatórios (e-mail, nome completo, senha, confirmação de senha) <br> - Clicar em "Registrar" |
|Critério de Êxito | - O cadastro foi realizado com sucesso. |
|  	|  	|
| Caso de Teste 	| CT-02 – Efetuar login	|
|Requisito Associado | RF-002	- A aplicação deve permitir que o usuário faça login utilizando suas credenciais cadastradas. |
| Objetivo do Teste 	| Verificar se o usuário consegue realizar login. |
| Passos 	| - Acessar o navegador <br> - Informar o endereço do site https://imuniti... - Clicar no botão "Entrar" <br> - Preencher o campo de e-mail <br> - Preencher o campo da senha <br> - Clicar em "Entrar" |
|Critério de Êxito | - O login foi realizado com sucesso. |
|  	|  	|
| Caso de Teste 	| CT-03 – Efetuar login	|
|Requisito Associado | RF-003	- A aplicação deve permitir que o usuário crie e gerencie perfis de outros familiares. |
| Objetivo do Teste 	| Verificar se o usuário consegue criar e gerenciar perfis. |
| Passos 	| - Acessar o navegador <br> - Informar o endereço do site https://imuniti... - Clicar no botão "Entrar" <br> - Preencher o campo de e-mail <br> - Preencher o campo da senha <br> - Clicar em "Entrar" <br> - Clicar em "Cadastrar membro" <br> - Preencher os campos obrigatórios (Apelido, nome completo, Data de nascimento, CPF, CNS) <br> - Clicar em "Cadastrar membro" - <br> Clicar em "Gerenciar cadastro" <br> - Clicar em "Selecionar Perfil"  |
|Critério de Êxito | - Novo membro cadastrado com sucesso e visualização do novo membro |
|  	|  	|
| Caso de Teste 	| CT-04 – Efetuar login	|
|Requisito Associado | RF-004	- A aplicação deve permitir que o usuário registre e gerencie as vacinas tomadas, possibilitando a modificação ou exclusão dos registros, se necessário, e incluir detalhes como nome da vacina, data de aplicação, lote, validade, local, responsável pela aplicação e anotações importantes, como possíveis efeitos colaterais. |
| Objetivo do Teste 	| Verificar se o usuário consegue criar e gerenciar perfis. |
| Passos 	| - Acessar o navegador <br> - Informar o endereço do site https://imuniti... - Clicar no botão "Entrar" <br> - Preencher o campo de e-mail <br> - Preencher o campo da senha <br> - Clicar em "Entrar" <br> - Clicar em "Cadastrar membro" <br> - Preencher os campos obrigatórios (Apelido, nome completo, Data de nascimento, CPF, CNS) <br> - Clicar em "Cadastrar membro" - <br> Clicar em "Gerenciar cadastro" <br> - Clicar em "Selecionar Perfil"  |
|Critério de Êxito | - Novo membro cadastrado com sucesso e visualização do novo membro |
|  	|  	|
| Caso de Teste 	| CT-05 – Efetuar login	|
|Requisito Associado | RF-005	- A aplicação deve permitir que o usuário personalize a cardeneta de vacinação conforme necessidade específica, podendo anexar vacinas adicionais. |
| Objetivo do Teste 	| Verificar se o usuário consegue criar e gerenciar perfis. |
| Passos 	| - Acessar o navegador <br> - Informar o endereço do site https://imuniti... - Clicar no botão "Entrar" <br> - Preencher o campo de e-mail <br> - Preencher o campo da senha <br> - Clicar em "Entrar" <br> - Clicar em "Cadastrar membro" <br> - Preencher os campos obrigatórios (Apelido, nome completo, Data de nascimento, CPF, CNS) <br> - Clicar em "Cadastrar membro" - <br> Clicar em "Gerenciar cadastro" <br> - Clicar em "Selecionar Perfil"  |
|Critério de Êxito | - Novo membro cadastrado com sucesso e visualização do novo membro |
|  	|  	|
| Caso de Teste 	| CT-06 – Efetuar login	|
|Requisito Associado | RF-006	- A aplicação deve permitir que o usuário localize a Unidade Básica de Saúde (UBS) mais próxima, com base em sua localização atual ou endereço informado, exibindo detalhes como nome, endereço. |
| Objetivo do Teste 	| Verificar se o usuário consegue criar e gerenciar perfis. |
| Passos 	| - Acessar o navegador <br> - Informar o endereço do site https://imuniti... - Clicar no botão "Entrar" <br> - Preencher o campo de e-mail <br> - Preencher o campo da senha <br> - Clicar em "Entrar" <br> - Clicar em "Cadastrar membro" <br> - Preencher os campos obrigatórios (Apelido, nome completo, Data de nascimento, CPF, CNS) <br> - Clicar em "Cadastrar membro" - <br> Clicar em "Gerenciar cadastro" <br> - Clicar em "Selecionar Perfil"  |
|Critério de Êxito | - Novo membro cadastrado com sucesso e visualização do novo membro |
|  	|  	|
| Caso de Teste 	| CT-07 – Efetuar login	|
|Requisito Associado | RF-007	- A aplicação deve permitir que o usuário faça a impressão da caderneta de vacinação no formato PDF. |
| Objetivo do Teste 	| Verificar se o usuário consegue criar e gerenciar perfis. |
| Passos 	| - Acessar o navegador <br> - Informar o endereço do site https://imuniti... - Clicar no botão "Entrar" <br> - Preencher o campo de e-mail <br> - Preencher o campo da senha <br> - Clicar em "Entrar" <br> - Clicar em "Cadastrar membro" <br> - Preencher os campos obrigatórios (Apelido, nome completo, Data de nascimento, CPF, CNS) <br> - Clicar em "Cadastrar membro" - <br> Clicar em "Gerenciar cadastro" <br> - Clicar em "Selecionar Perfil"  |
|Critério de Êxito | - Novo membro cadastrado com sucesso e visualização do novo membro |
|  	|  	|
| Caso de Teste 	| CT-08 – Efetuar login	|
|Requisito Associado | RF-008	- A aplicação deve permitir que o usuário visualize o calendário vacinal com base na idade e histórico de vacinas. |
| Objetivo do Teste 	| Verificar se o usuário consegue criar e gerenciar perfis. |
| Passos 	| - Acessar o navegador <br> - Informar o endereço do site https://imuniti... - Clicar no botão "Entrar" <br> - Preencher o campo de e-mail <br> - Preencher o campo da senha <br> - Clicar em "Entrar" <br> - Clicar em "Cadastrar membro" <br> - Preencher os campos obrigatórios (Apelido, nome completo, Data de nascimento, CPF, CNS) <br> - Clicar em "Cadastrar membro" - <br> Clicar em "Gerenciar cadastro" <br> - Clicar em "Selecionar Perfil"  |
|Critério de Êxito | - Novo membro cadastrado com sucesso e visualização do novo membro |
|  	|  	|
| Caso de Teste 	| CT-09 – Efetuar login	|
|Requisito Associado | RF-009	- A aplicação deve permitir que o usuário consiga recuperar sua senha. |
| Objetivo do Teste 	| Verificar se o usuário consegue criar e gerenciar perfis. |
| Passos 	| - Acessar o navegador <br> - Informar o endereço do site https://imuniti... - Clicar no botão "Entrar" <br> - Preencher o campo de e-mail <br> - Preencher o campo da senha <br> - Clicar em "Entrar" <br> - Clicar em "Cadastrar membro" <br> - Preencher os campos obrigatórios (Apelido, nome completo, Data de nascimento, CPF, CNS) <br> - Clicar em "Cadastrar membro" - <br> Clicar em "Gerenciar cadastro" <br> - Clicar em "Selecionar Perfil"  |
|Critério de Êxito | - Novo membro cadastrado com sucesso e visualização do novo membro |
|  	|  	|
| Caso de Teste 	| CT-10 – Efetuar login	|
|Requisito Associado | RF-010	- A aplicação deve exibir de forma dinâmica a situação das vacinas: verde para aplicada, amarelo para próxima do prazo, vermelho as atrasadas e cinza para futuras. |
| Objetivo do Teste 	| Verificar se o usuário consegue criar e gerenciar perfis. |
| Passos 	| - Acessar o navegador <br> - Informar o endereço do site https://imuniti... - Clicar no botão "Entrar" <br> - Preencher o campo de e-mail <br> - Preencher o campo da senha <br> - Clicar em "Entrar" <br> - Clicar em "Cadastrar membro" <br> - Preencher os campos obrigatórios (Apelido, nome completo, Data de nascimento, CPF, CNS) <br> - Clicar em "Cadastrar membro" - <br> Clicar em "Gerenciar cadastro" <br> - Clicar em "Selecionar Perfil"  |
|Critério de Êxito | - Novo membro cadastrado com sucesso e visualização do novo membro |
|  	|  	|
| Caso de Teste 	| CT-11 – Efetuar login	|
|Requisito Associado | RF-011	- A aplicação deve enviar notificações e/ou lembretes aos usuários sobre vacinas próximas ou doses de reforço com até uma semana de antecedência. |
| Objetivo do Teste 	| Verificar se o usuário consegue criar e gerenciar perfis. |
| Passos 	| - Acessar o navegador <br> - Informar o endereço do site https://imuniti... - Clicar no botão "Entrar" <br> - Preencher o campo de e-mail <br> - Preencher o campo da senha <br> - Clicar em "Entrar" <br> - Clicar em "Cadastrar membro" <br> - Preencher os campos obrigatórios (Apelido, nome completo, Data de nascimento, CPF, CNS) <br> - Clicar em "Cadastrar membro" - <br> Clicar em "Gerenciar cadastro" <br> - Clicar em "Selecionar Perfil"  |
|Critério de Êxito | - Novo membro cadastrado com sucesso e visualização do novo membro |


 
> **Links Úteis**:
> - [IBM - Criação e Geração de Planos de Teste](https://www.ibm.com/developerworks/br/local/rational/criacao_geracao_planos_testes_software/index.html)
> - [Práticas e Técnicas de Testes Ágeis](http://assiste.serpro.gov.br/serproagil/Apresenta/slides.pdf)
> -  [Teste de Software: Conceitos e tipos de testes](https://blog.onedaytesting.com.br/teste-de-software/)
> - [Criação e Geração de Planos de Teste de Software](https://www.ibm.com/developerworks/br/local/rational/criacao_geracao_planos_testes_software/index.html)
> - [Ferramentas de Test para Java Script](https://geekflare.com/javascript-unit-testing/)
> - [UX Tools](https://uxdesign.cc/ux-user-research-and-user-testing-tools-2d339d379dc7)
