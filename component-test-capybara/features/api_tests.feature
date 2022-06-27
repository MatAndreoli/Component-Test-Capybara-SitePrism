#language: pt
@search-google
@desktop
Funcionalidade: API Tests

    Contexto: 
        Dado que eu acesse a api de ceps

    Cenário: CEP de SP
        Quando pesquiso o cep "01001000"
        Então são retonados os dados do cep
        E a localidade e estado são, respectivamente, "São Paulo" e "SP"
        E o status code é 200
        E a message é "OK"
        
    Cenário: CEP de MG
        Quando pesquiso o cep "30190001"
        Então são retonados os dados do cep
        E a localidade e estado são, respectivamente, "Belo Horizonte" e "MG"
        E o status code é 200
        E a message é "OK"

    Cenário: CEP incorreto
        Quando pesquiso o cep "4353434344"
        Então são retonados os dados do cep
        E o status code é 400
        E a message é "Bad Request"
