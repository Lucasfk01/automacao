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