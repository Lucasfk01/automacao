Dado("acessa a área de cadastro") do
    @home.criar_nova_conta
  end
  
  Dado("tenta finalizar o cadastro setup {int} com dados em branco") do |int|
    @cadastro.wait_until_botao_step2_visible
    @cadastro.autorizacao_sms.click
    @cadastro.botao_step2.click
  end
  
  Então("serão exibidos os alertas nos campos em branco setup {int}") do |int|
    expect(@cadastro).to have_alerta_campos_obrigatorios(:count => 4)
end

Dado("tenta finalizar o cadastro com um CPF inválido") do
    Helpers.set_mask @cadastro.input_cpf_cnpj, @cpf_invalido
    @cadastro.celular_validacao.click
  end
  
  Então("será exibido um modal de alerta para o cpf") do
    @cadastro.wait_until_modal_cpf_visible
    expect(@cadastro.modal_cpf.text).to eq @mensagem_erro_cpf_modal
end

Dado("tenta finalizar o cadastro com um telefone inválido") do
    Helpers.set_mask @cadastro.input_cpf_cnpj, @cpf
    Helpers.set_mask @cadastro.celular_validacao, @celular_invalido
    @cadastro.autorizacao_sms.click
    @cadastro.botao_step2.click
  end
  
  Então("será exibido um alerta no campo do telefone") do
    expect(@cadastro).to have_alerta_campos_obrigatorios(:count => 2)
end

Dado("tenta finalizar o cadastro com um CPF já utilizado") do
    Helpers.set_mask @cadastro.input_cpf_cnpj, @cpf_cadastrado
    @cadastro.celular_validacao.click
  end
  
  Então("será exibido um modal de alerta para o cpf já utilizado") do
    @cadastro.wait_until_modal_cpf_visible
    expect(@cadastro.modal_cpf.text).to eq @mensagem_cpf_cadastrado
end

Dado("tenta finalizar o cadastro com um e-mail inválido") do
    Cadastro.pf(@cadastro, @cpf, @celular_validacao, @proxima_pagina, @email_invalido, @nome, @sobrenome, @telefone, @nascimento, @senha, @confirmar_senha, @autorizacao_sms)
    @cadastro.botao_step3.click
  end
  
  Então("será exibido um alerta de erro para o e-mail") do
    expect(@cadastro).to have_alerta_campos_obrigatorios(:count => 2)
end

Dado("tenta finalizar o cadastro com um e-mail já utilizado") do
    Cadastro.pf(@cadastro, @cpf, @celular_validacao, @proxima_pagina, @email_utilizado, @nome, @sobrenome, @telefone, @nascimento, @senha, @confirmar_senha, @autorizacao_sms)
    @cadastro.botao_step3.click
    @cadastro.cep.set @cep
    sleep 2
    @cadastro.numero.set @numero
    @cadastro.botao_criar_conta.click
  end
  
  Então("será exibido um alerta de erro informando que o e-mail já existe") do
    expect(@cadastro).to have_erro_email_utilizado(:count => 2)
end

Dado("tenta finalizar o cadastro com uma senha inválida") do
    Cadastro.pf(@cadastro, @cpf, @celular_validacao, @proxima_pagina, @email, @nome, @sobrenome, @telefone, @nascimento, @senha, @senha_invalida)
    @cadastro.botao_step3.click
  end
  
  Então("será exibido um alerta de erro informando que os campos de senha devem ser iguais") do
    expect(@cadastro).to have_alerta_campos_obrigatorios(:count => 2)
end

Dado("tenta finalizar o cadastro com um token inválido") do
    Cadastro.pf(@cadastro, @cpf, @celular_validacao, @proxima_pagina, @email, @nome, @sobrenome, @telefone, @nascimento, @senha, @confirmar_senha)
    @cadastro.token.set @token_invalido
  end
  
  Então("será exibido um alerta de erro informando que o token é inválido") do
    expect(@cadastro.alerta_token_invalido.text).to eq @mensagem_codigo_invalido
end

Quando("digitar os dados solicitados para cadastro de PF") do
    Cadastro.pf(@cadastro, @cpf, @celular_validacao, @proxima_pagina, @email, @nome, @sobrenome, @telefone, @nascimento, @senha, @confirmar_senha, @autorizacao_sms)
    @cadastro.botao_step3.click
  end
  
  Quando("não digitar o endereço") do
    @cadastro.wait_until_botao_criar_conta_visible
    @cadastro.botao_seguir.click
  end
  
  Então("o usuário será cadastrado com sucesso") do
    expect(@cadastro.mensagem_sucesso_cadastro.text).to eq @mensagem_cadastro_sucesso
    puts "O e-mail do cliente cadastrado é #{@email}"
end

Quando("inserir o seu endereço") do
    @cadastro.cep.set @cep
    sleep 2
    @cadastro.numero.set @numero
    @cadastro.botao_criar_conta.click
end

Dado("tenta finalizar o cadastro com um cnpj inválido") do
    Helpers.set_mask @cadastro.input_cpf_cnpj, @cnpj_invalido
    @cadastro.celular_validacao.click
  end
  
  Então("será exibido um alerta de erro para o cnpj") do
    @cadastro.wait_until_modal_cpf_visible
    expect(@cadastro.modal_cpf.text).to eq @mensagem_erro_cnpj_modal
end

Dado("tenta finalizar o cadastro com uma inscrição estadual inválida") do
    Cadastro.pj(@cadastro, @cnpj, @celular_validacao, @proxima_pagina, @email, @razao_social, @nome_fantasia, @estado_ie, @inscricao_estadual, @telefone, @nome, @cpf, @senha, @confirmar_senha)
    @cadastro.input_inscricao_estadual.set "1234"
    @cadastro.botao_step3.click
  end
  
  Então("será exibido um alerta de erro para a inscrição estadual") do
    expect(@cadastro).to have_alerta_campos_obrigatorios(:count => 2)
end

Quando("digitar os dados solicitados para cadastro de PJ") do
    Cadastro.pj(@cadastro, @cnpj, @celular_validacao, @proxima_pagina, @email, @razao_social, @nome_fantasia, @estado_ie, @inscricao_estadual, @telefone, @nome, @cpf, @senha, @confirmar_senha, @autorizacao_sms)
    @cadastro.botao_step3.click
end