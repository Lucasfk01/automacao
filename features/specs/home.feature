#language: pt

Funcionalidade: Validar as principais funcionalidades da Home
Acessar a Home, pesquisar por ofertas

Contexto: Acessar a home da Store
    Dado que o usuário acessa a home da Store
    
@teste_home @teste_regressao
Cenário: Realizar uma busca sem resultados
    Quando ele pesquisar pelo termo "Magento"
    Então a pesquisa deverá retornar sem nenhum resultado

@teste_home2 @teste_regressao
Cenário: Realizar uma busca por qualquer produto da Store 
    Quando ele pesquisar pelo termo "TOTVS Backoffice (Linha Protheus) - TAF Contábil MP"
    Então a pesquisa deverá retornar os produtos relacionados