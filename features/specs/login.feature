#language: pt

Funcionalidade: Login
Para que eu possa realizar compras
Sendo um usuario previamente cadastrado
Posso acessar o sistema com meu email e senha previamente cadastrado.


    Contexto: Pagina de autenticacao
        Dado que eu esteja na pagina de autenticacao


    Cenario: Login com Sucesso
        Quando faco login com "testeCucumber@email.com" e "123456tC"
        Entao vejo a mensagem de boas vindas "Welcome to your account. Here you can manage all of your personal information and orders."


    Esquema do Cenario: Tentativa de login

        Quando faco login com "<email>" e "<password>"
        Entao vejo a mensagem de alerta "<message>"

        Exemplos:
            | email                   | password  | message                    |
            | testeCucumber@email.com | 1111111aa | Authentication failed.     |
            | testar987@email.com     | 123456tC  | Authentication failed.     |
            |                         | 123456tC  | An email address required. |
            | testar987@email.com     |           | Password is required.      |