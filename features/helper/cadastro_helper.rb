class Cadastro
    def self.pf(cadastro, cpf, celular_validacao, proxima_pagina, email, nome, sobrenome, telefone, nascimento, senha, confirmar_senha, autorizacao_sms)
      Helpers.set_mask cadastro.input_cpf_cnpj, cpf
      Helpers.set_mask cadastro.celular_validacao, celular_validacao
      cadastro.autorizacao_sms.click
      cadastro.botao_step2.click
      cadastro.email.set(email)
      cadastro.nome.set(nome)
      cadastro.sobrenome.set(sobrenome)
      Helpers.set_mask cadastro.telefone, telefone
      Helpers.set_mask cadastro.nascimento, nascimento
      cadastro.senha.set(senha)
      cadastro.confirmar_senha.set(confirmar_senha)
    end
  
    def self.pj(cadastro, cnpj, celular_validacao, proxima_pagina, email, razao_social, nome_fantasia, estado_ie, inscricao_estadual, telefone, nome, cpf, senha, confirmar_senha, autorizacao_sms)
      Helpers.set_mask cadastro.input_cpf_cnpj, cnpj
      Helpers.set_mask cadastro.celular_validacao, celular_validacao
      cadastro.autorizacao_sms.click
      cadastro.botao_step2.click
      cadastro.email.set(email)
      cadastro.input_razaosocial.set(razao_social)
      cadastro.input_nome_fantasia.set(nome_fantasia)
      cadastro.estado_ie.select("SP")
      cadastro.input_inscricao_estadual.set("896.710.517.583")
      Helpers.set_mask cadastro.telefone, telefone
      cadastro.input_responsavel.set(nome_fantasia)
      Helpers.set_mask cadastro.input_cpf_responsavel, cpf
      cadastro.senha.set(senha)
      cadastro.confirmar_senha.set(confirmar_senha)
    end
  
    def self.pj_inadimplente(cadastro, cnpj, celular_validacao, proxima_pagina, email, razao_social, nome_fantasia, estado_ie, inscricao_estadual, telefone, nome, cpf, senha, confirmar_senha)
      Helpers.set_mask cadastro.input_cpf_cnpj, Helpers.inadimplentes
      Helpers.set_mask cadastro.celular_validacao, celular_validacao
      cadastro.botao_step2.click
      cadastro.email.set(email)
      cadastro.input_razaosocial.set(razao_social)
      cadastro.input_nome_fantasia.set(nome_fantasia)
      cadastro.estado_ie.select("SP")
      cadastro.input_inscricao_estadual.set("1234")
      Helpers.set_mask cadastro.telefone, telefone
      cadastro.input_responsavel.set(nome_fantasia)
      Helpers.set_mask cadastro.input_cpf_responsavel, cpf
      cadastro.senha.set(senha)
      cadastro.confirmar_senha.set(confirmar_senha)
    end
end