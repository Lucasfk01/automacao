#language: pt

Funcionalidade: Validar as principais funcionalidades do checkout

Adicionar, editar e remover ofertas do carrinho 

Contexto: Acessar a url da Store
    Dado que o usuário acessa a home da Store 

@teste_checkout @teste_regressao
Cenário: Visualizar o carrinho vazio 
    Quando ele clicar no carrinho de compras
    Então o carrinho deverá estar vazio

@teste_checkout @teste_regressao
Cenário: Adicionar e remover produto do carrinho 
    Quando ele pesquisar pelo termo "TOTVS Backoffice (Linha Protheus) - TAF Contábil MP"
    Então a pesquisa deverá retornar os produtos relacionados
    Quando ele acessar a oferta 
    E adicionar o produto ao carrinho 
    Então poderá remover o produto do carrinho 
    Então o carrinho deverá estar vazio
    E permanecer no checkout 

@teste_checkout @dados_usuario @teste_regressao
Cenário: Compartilhar carrinho por e-mail
    Quando ele pesquisar pelo termo "TOTVS Backoffice (Linha Protheus) - TAF Contábil MP"
    Então a pesquisa deverá retornar os produtos relacionados
    Quando ele acessar a oferta 
    E adicionar o produto ao carrinho 
    Então poderá compartilhar o carrinho por e-mail
