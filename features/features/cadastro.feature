#language: pt
#utf-8

    @cadastro
    Funcionalidade: Cadastro de usuarios

    Cenario: Realizar o cadastro de um usuario com dados validos
        Dado que eu tenha acesso ao app
        Quando eu clicar em "New User? Register"
        E realizar o cadastro com dados:
            |nome   |telefone     |email            |senha |
            |Monique|11 91212-1212|monique@rd.com.br|147258|
        Entao o cadastro deve ser realizado com sucesso