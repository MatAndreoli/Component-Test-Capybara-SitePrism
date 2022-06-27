#language: pt
@search-google
@desktop
Funcionalidade: Mecanismo de busca

    Cenário: Deve buscar por receita de pudim
    Dado que esteja na tela de busca
    Quando fazer busca por "pudim"
    E clicar no botão pesquisa Google
    Então devo visualizar um texto com "Pudim de leite condensado - TudoGostoso" na página
    E devo clicar na 1ª imagem que é um link
    E devo ver a logo do site "TudoGostoso - Onde nascem todas as receitas"
