#language: pt 

Funcionalidade: Validar as principais funcionalidades da página de produtos

Contexto: Acessar a home da Store
    Dado que o usuário acessa a home da Store

@teste_produto @teste_regressao
Cenário: Tentar avaliar uma oferta com os campos em branco 
    Quando ele pesquisar pelo termo "TOTVS Backoffice (Linha Protheus) - TAF Contábil MP"
    Então a pesquisa deverá retornar os produtos relacionados 
    Quando ele acessar a oferta 
    Mas tentar enviar uma avaliação do produto com os campos em branco
    Então será exibido os alertas em todos os campos

@teste_produto @avaliacao @teste_regressao
Cenário: Tentar avaliar uma oferta com um e-mail inválido 
    Quando ele pesquisar pelo termo "TOTVS Backoffice (Linha Protheus) - TAF Contábil MP"
    Então a pesquisa deverá retornar os produtos relacionados 
    Quando ele acessar a oferta
    Mas tentar enviar uma avaliação com um e-mail invalido 
    Então será exibido um alerta no campo e-mail

@teste_produto3 @avaliacao @teste_regressao
Cenário: Realizar uma avaliação com sucesso 
    Quando ele pesquisar pelo termo "TOTVS Backoffice (Linha Protheus) - TAF Contábil MP"
    Então a pesquisa deverá retornar os produtos relacionados 
    Quando ele acessar a oferta
    E realizar uma avaliação com dados válidos 
    Então será exibida uma mensagem de sucesso

@teste_produto @teste_regressao
Cenário: Tentativa de contato LEAD com dados em branco 
    Quando ele pesquisar pelo termo "Plataforma de Integração by Digibee"
    Então a pesquisa deverá retornar os produtos relacionados
    Quando ele acessar a oferta do LED
    E solicitar o contato 
    Mas tentar submeter o formulário com dados em branco 
    Então serão exibidos os alertas nos campos em branco do formulário

@teste_produto @lead @teste_regressao
Cenário: Solicitar contato LEAD com dados inválidos
    Quando ele pesquisar pelo termo "Plataforma de Integração by Digibee"
    Então a pesquisa deverá retornar os produtos relacionados
    Quando ele acessar a oferta do LED
    E solicitar o contato
    Mas tentar submeter o formulário com dados inválidos
    Então serão exibidos os alertas nos campos inválidos do formulário

@teste_produto @lead @teste_regressao
Cenário: Solicitar contato LEAD com sucesso PF
    Quando ele pesquisar pelo termo "Plataforma de Integração by Digibee"
    Então a pesquisa deverá retornar os produtos relacionados
    Quando ele acessar a oferta do LED
    E solicitar o contato
    E preencher os dados solicitados de PF
    Então o formulário será enviado com sucesso

@teste_produto @lead @teste_regressao
Cenário: Solicitar contato LED com sucesso PJ
    Quando ele pesquisar pelo termo "Plataforma de Integração by Digibee"
    Então a pesquisa deverá retornar os produtos relacionados
    Quando ele acessar a oferta do LED
    E solicitar o contato
    E preencher os dados solicitados de PJ
    Então o formulário será enviado com sucesso
