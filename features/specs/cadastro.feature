#language: pt 

Funcionalidade: Realizar cadastro dos usuários na Store 

Apenas usuários PF e PJ maiores de 18 anos poderão se cadastrar na Store
Os inputs tem limites de caracteres 

Contexto: Acessar a home da Store
    Dado que o usuário acessa a home da Store
    E acessa a área de cadastro 

@teste_cadastro @teste_regressao 
Cenário: Tentativa de cadastro setup 1 com dados em branco
    Mas tenta finalizar o cadastro setup 1 com dados em branco
    Então serão exibidos os alertas nos campos em branco setup 1

@teste_cadastro @dados_usuario @teste_regressao  
Cenário: Tentativa de cadastro com CPF inválido
    Mas tenta finalizar o cadastro com um CPF inválido 
    Então será exibido um modal de alerta para o cpf

@teste_cadastro @dados_usuario @teste_regressao  
Cenário: Tentativa de cadastro com telefone inválido
    Mas tenta finalizar o cadastro com um telefone inválido 
    Então será exibido um alerta no campo do telefone

@teste_cadastro @dados_usuario @teste_regressao   
Cenário: Tentativa de cadastro com CPF já utilizado
    Mas tenta finalizar o cadastro com um CPF já utilizado 
    Então será exibido um modal de alerta para o cpf já utilizado

@teste_cadastro @dados_usuario @teste_regressao 
Cenário: Tentativa de cadastro com e-mail inválido
    Mas tenta finalizar o cadastro com um e-mail inválido
    Então será exibido um alerta de erro para o e-mail

@teste_cadastro6 @dados_usuario 
Cenário: Tentativa de cadastro com e-mail já utilizado
    Mas tenta finalizar o cadastro com um e-mail já utilizado
    Então será exibido um alerta de erro informando que o e-mail já existe

@teste_cadastro7 @dados_usuario 
Cenário: Tentativa de cadastro para menores de 18 anos
    Mas tenta finalizar o cadastro com uma data de nascimento inválida
    Então será exibido um alerta de erro informando que somente maiores podem se cadastrar

@teste_cadastro @dados_usuario @teste_regressao 
Cenário: Tentativa de cadastro com confirmação de senha inválida
    Mas tenta finalizar o cadastro com uma senha inválida
    Então será exibido um alerta de erro informando que os campos de senha devem ser iguais

@teste_cadastro @dados_usuario @teste_regressao 
Cenário: Tentativa de cadastro com token inválido
    Mas tenta finalizar o cadastro com um token inválido
    Então será exibido um alerta de erro informando que o token é inválido

@teste_cadastro @dados_usuario @teste_regressao  
Cenário: Cadastrar um usuário PF com sucesso sem digitar seu endereço
    Quando digitar os dados solicitados para cadastro de PF
    Mas não digitar o endereço
    Então o usuário será cadastrado com sucesso

@teste_cadastro2 @dados_usuario @teste_regressao @12
Cenário: Cadastrar um usuário PF com sucesso 
    Quando digitar os dados solicitados para cadastro de PF
    E inserir o seu endereço
    Então o usuário será cadastrado com sucesso

@teste_cadastro @dados_usuario @teste_regressao  
Cenário: Tentativa de cadastro com CNPJ inválido
    Mas tenta finalizar o cadastro com um cnpj inválido
    Então será exibido um alerta de erro para o cnpj 

@teste_cadastro @dados_usuario @teste_regressao 
Cenário: Tentativa de cadastro com inscrição estadual inválida
    Mas tenta finalizar o cadastro com uma inscrição estadual inválida
    Então será exibido um alerta de erro para a inscrição estadual

@teste_cadastro @dados_usuario @teste_regressao 
Cenário: Cadastrar um usuário PJ com sucesso 
    Quando digitar os dados solicitados para cadastro de PJ
    E inserir o seu endereço
    Então o usuário será cadastrado com sucesso