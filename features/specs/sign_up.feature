#language:pt

Funcionalidade: Novo Usuario
    Para que eu possa realizar compras
    Sendo um cliente
    Posso acessar a pagina de criar conta com email e me cadastrar.


    Cenario: Email para cadastro aceito com sucesso
        Dado que eu acesso a pagina autenticacao
        Quando preencho o email
        Então vejo a mensagem de titulo do cadastro "CREATE AN ACCOUNT"


    Esquema do Cenario: Pagina de autenticacao

        Dado que eu acesso a pagina autenticacao
        Quando preencho o email com "<email>"
        Então vejo a mensagem de alerta "<message>"

        Exemplos:
            | email                   | message                                                                                                             |
            |                         | Invalid email address.                                                                                               |
            | @email.com              | Invalid email address.                                                                                               |
            | a.com                   | Invalid email address.                                                                                               |
            | testeCucumber@email.com | An account using this email address has already been registered. Please enter a valid password or request a new one. |


    Cenario: Finalizar cadastro

        Dado que estou na pagina de finalizar cadastro
        Quando quando preencho os campos
        Entao vejo a mensagem de boas vindas "Welcome to your account. Here you can manage all of your personal information and orders."
