#language: pt
@search-google
@desktop
Funcionalidade: Mecanismo de busca

    Contexto:
        Dado que esteja na tela de busca

        Cenário: Deve buscar por receita de pudim
            Quando fazer busca por: "pudim"
            E clicar no botão pesquisa Google
            Então devo visualizar um link com o titulo "pudim"
            E clicar na primeira imagem

        Cenário: Deve buscar por tudo gostoso
            Quando fazer busca por: "tudo gostoso"
            E clicar no botão pesquisa Google
            Então devo visualizar um link com o titulo "TudoGostoso - Onde nascem todas as receitas"
            E clicar na primeira imagem

        Cenário: Deve buscar por tudo gostoso facebook
            Quando fazer busca por: "tudo gostoso"
            E clicar no botão pesquisa Google
            Então devo visualizar um link com o titulo "Doces e sobremesas"
            E clicar na primeira imagem
