#language: pt

Funcionalidade: Validar as funcionalidades do Login

Contexto: Acessar a home da Store
    Dado que o usuário acessa a home da Store

@teste_login @dados_login @teste_regressao 
Cenário: Tentativa de login com dados inválidos 
    Mas tenta se logar com dados inválidos 
    Então será exibido um alerta de dados inválidos

@teste_login2 @dados_login @logout @teste_regressao
Cenário: Realizar login na Store
    Quando ele se autenticar com dados válidos
    Então o login será realizado com sucesso

@teste_login3 @dados_login @teste_regressao
Cenário: Realizar logout da Store 
    Quando ele se autenticar com dados válidos 
    Então o login será realizado com sucesso
    E o usuário poderá fazer o logout com sucesso