#language: pt
@search-google
@desktop
Funcionalidade: Mecanismo de busca

    Cenário: Deve buscar por receita de pudim
        Dado que esteja na tela de busca
        Quando fazer busca por: "pudim"
        E clicar no botão pesquisa Google
        Então devo visualizar um link com o titulo "pudim"

    Cenário: Deve buscar por tudo gostoso
        Dado que esteja na tela de busca
        Quando fazer busca por: "tudo gostoso"
        E clicar no botão pesquisa Google
        Então devo visualizar um link com o titulo "TudoGostoso - Onde nascem todas as receitas"
        E clicar no link com o titulo "TudoGostoso - Onde nascem todas as receitas"

    Cenário: Deve buscar por tudo gostoso facebook
        Dado que esteja na tela de busca
        Quando fazer busca por: "tudo gostoso"
        E clicar no botão pesquisa Google
        Então devo visualizar um link com o titulo "Doces e sobremesas"
        E clicar no link com o titulo "Doces e sobremesas"
