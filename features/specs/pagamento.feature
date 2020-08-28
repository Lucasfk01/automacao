#language: pt

Funcionalidade: Finalizar compra com dados de cartão inválidos

Finalizar compra com dados de cartão inválidos

Contexto: Acessa a url da Store
    Dado que o usuário acessa a home da Store 

@teste_pagamento @dados_pagamento @teste_regressao @dados_login
Cenário: Tentativa de finalizar compra com dados de cartão inválidos
    Quando ele pesquisar pelo termo "TOTVS Backoffice (Linha Protheus) - TAF Contábil MP"
    Então a pesquisa deverá retornar os produtos relacionados
    Quando ele acessar a oferta 
    E adicionar o produto ao carrinho
    Quando ele se autenticar com os dados válidos
    E inserir os dados incorretos do cartão
    Então deverá aparecer um erro de dados de cartão inválido

@teste_pagamento @dados_pagamento @dados_login
Cenário: Realizar a compra de um produto mpn
    Quando ele pesquisar pelo termo "Eleve Saúde Online - 1 Usuário"
    Então a pesquisa deverá retornar os produtos relacionados
    Quando ele acessar uma oferta 
    E adicionar o produto no carrinho
    Quando ele se autenticar com dados de login válidos
    E inserir os dados corretos do cartão
    Então a compra deverá ser realizada com sucesso

