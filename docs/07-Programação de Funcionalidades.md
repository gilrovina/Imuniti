# Programação de Funcionalidades

<span style="color:red">Pré-requisitos: <a href="2-Especificação do Projeto.md"> Especificação do
Projeto</a></span>, <a href="3-Projeto de Interface.md"> Projeto de Interface</a>, <a href="4-Metodologia.md">
Metodologia</a>, <a href="3-Projeto de Interface.md"> Projeto de Interface</a>, <a href="5-Arquitetura da Solução.md">
Arquitetura da Solução</a>

Implementação do sistema descrita por meio dos requisitos funcionais e/ou não funcionais. Nesta seção, é essencial
relacionar os requisitos atendidos com os artefatos criados (código fonte) e com o(s) responsável(is) pelo
desenvolvimento de cada artefato a cada etapa. Nesta seção também deverão ser apresentadas, se necessário, as instruções
para acesso e verificação da **implementação que deve estar funcional no ambiente de hospedagem obrigatoriamente a
partir da Etapa 03**.

Por exemplo: a tabela a seguir deverá ser preenchida considerando os artefatos desenvolvidos.

| ID     | Descrição do Requisito                                                                                                            | Artefatos produzidos | Aluno(a) responsável |
|--------|-----------------------------------------------------------------------------------------------------------------------------------|----------------------|----------------------|
| RF-001 | A aplicação deve permitir que o usuário faça o auto cadastro e gerencie seus dados, incluindo informações básicas como e-mail e senha. |AccountController.cs, RegisterViewModel.cs, VerifyEmailViewModel.cs, VerifyEmailViewModel.cs, Register.cshtml|Felipe e Lucas|
| RF-002 | A aplicação deve permitir que o usuário faça login utilizando suas credenciais cadastradas. |AccountController.cs e HomeController.cs, LoginViewModel.cs, VerifyEmailViewModel.cs, Login.cshtml, |Felipe e Lucas|
| RF-003 | A aplicação deve permitir que o usuário crie e gerencie perfis de outros familiares. |MembrosController.cs, Create.cshtml, Delete.cshtml, Details.cshtml, Edit.cshtml, Index.cshtml|Alberto e Carolina|
| RF-004 | A aplicação deve permitir que o usuário registre e gerencie as vacinas tomadas, possibilitando a modificação ou exclusão dos registros, se necessário, e incluir detalhes como nome da vacina, data de aplicação, lote, validade, local, responsável pela aplicação e anotações importantes, como possíveis efeitos colaterais. |                      |Gilson e Ryan|
| RF-005 | A aplicação deve permitir que o usuário personalize a caderneta de vacinação conforme necessidade específica, podendo anexar vacinas adicionais. |                      |Gilson e Ryan|
| RF-006 | A aplicação deve permitir que o usuário localize a Unidade Básica de Saúde (UBS) mais próxima, com base em sua localização atual ou endereço informado, exibindo detalhes como nome, endereço.  |                      |                      |
| RF-007 | A aplicação deve permitir que o usuário faça a impressão da caderneta de vacinação no formato PDF. |                      |                      |
| RF-008 | A aplicação deve permitir que o usuário visualize o calendário vacinal com base na idade e histórico de vacinas. |                      |Gilson e Ryan|
| RF-009 | A aplicação deve permitir que o usuário consiga recuperar sua senha. |AccountController.cs, ChangePasswordViewModel.cs, ChangePassword.cshtml|Felipe e Lucas|
| RF-010 | A aplicação deve exibir de forma dinâmica a situação das vacinas: verde para aplicada, amarelo para próxima do prazo, vermelho as atrasadas e cinza para futuras. |                      |Gilson e Ryan|
| RF-011 | A aplicação deve enviar notificações e/ou lembretes aos usuários sobre vacinas próximas ou doses de reforço com até uma semana de antecedência. |                      |                      |

# Instruções de acesso

Não deixe de informar o link onde a aplicação estiver disponível para acesso (por
exemplo: https://adota-pet.herokuapp.com/src/index.html).

Se houver usuário de teste, o login e a senha também deverão ser informados aqui (por exemplo: usuário - admin / senha -
admin).

O link e o usuário/senha descritos acima são apenas exemplos de como tais informações deverão ser apresentadas.

> **Links Úteis**:
>
> - [Trabalhando com HTML5 Local Storage e JSON](https://www.devmedia.com.br/trabalhando-com-html5-local-storage-e-json/29045)
> - [JSON Tutorial](https://www.w3resource.com/JSON)
> - [JSON Data Set Sample](https://opensource.adobe.com/Spry/samples/data_region/JSONDataSetSample.html)
> - [JSON - Introduction (W3Schools)](https://www.w3schools.com/js/js_json_intro.asp)
> - [JSON Tutorial (TutorialsPoint)](https://www.tutorialspoint.com/json/index.htm)
