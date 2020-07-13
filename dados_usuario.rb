Before "@dados_usuario" do

    # Dados Cadastro
    @nome = Faker::Name.first_name
    @sobrenome = Faker::Name.last_name
    @cpf = Faker::CPF.numeric
    @cpf_invalido = "12345678900"
    @cpf_cadastrado = "49795711822"
    @cnpj = Faker::CNPJ.numeric
    @cnpj_invalido = "11111111111111"
    @celular_validacao = "11988428756"
    @celular_invalido = "11999999999"
    @email = @nome.downcase + @sobrenome.downcase + "@mailinator.com"
    @novoemail = @nome.downcase + @sobrenome.downcase + "@mailinator.com"
    @email_invalido = "111111111"
    @email_utilizado = "lucasfkimura@hotmail.com"
    @nascimento = "10091987"
    @nascimento_invalido = "01012018"
    @telefone = "11999999999"
    @celular_valido = "(11)98040-8300"
    @senha = "Totvs@123"
    @confirmar_senha = @senha
    @senha_invalida = "Totvs@000"
    @token_invalido = "99999"
    @cep = "05351-035"
    @numero = "152"
    @razao_social = Faker::Company.name
    @nome_fantasia = @razao_social
    @responsavel = @nome
    @cpf_responsavel = @cpf
    @site = "https://www.uol.com.br"
    @inscricao = "1234"
  
    # Compartilhar carrinho
    @email_carrinho = "lucasfkimura@hotmail.com"
  
    # Validação das mensagens
    @mensagem_erro_cpf_modal = "CPF NÃO É VÁLIDO!"
    @mensagem_erro_cnpj_modal = "CNPJ NÃO É VÁLIDO!"
  
    @mensagem_cpf_cadastrado = "CPF JÁ ESTÁ CADASTRADO!"
    @mensagem_codigo_invalido = "CÓDIGO INVÁLIDO"
    @mensagem_cadastro_sucesso = "Obrigado por registrar-se com TOTVS Store."
end