#language: pt
#utf-8

    @login
    Funcionalidade: Login

    @cadastro_user
    Esquema do Cenario: Realizar o login com usuario valido
        Dado que eu tenha acesso ao app
        Quando eu inserir um "<email>" e "<senha>"
        E clicar em login
        Entao o app deve mostrar a home logada

        Exemplos:
        |email            |senha |
        |monique@rd.com.br|147258|

    Esquema do Cenario: Realizar o login com usuario invalido
        Dado que eu tenha acesso ao app
        Quando eu inserir um "<email>" e "<senha>"
        E clicar em login
        Entao o app deve mostrar mensagem de erro

        Exemplos:
        |email            |senha |
        |monique@teste.com|147258|