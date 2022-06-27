#language: pt
@search-google
@desktop
Funcionalidade: Mecanismo de busca

    
    Cenário: Deve buscar por receita de pudim
    Dado que esteja na tela de busca
    Quando fazer busca por "pudim"
    E clicar no botão pesquisa Google
    Então devo visualizar um link com o titulo "Pudim de leite condensado - TudoGostoso"
    E devo clicar no link com o titulo "Pudim de leite condensado - TudoGostoso"
