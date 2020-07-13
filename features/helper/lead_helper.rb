class Lead
    def self.lead(produto, nome, email, telefone, assunto)
      produto.campo_nome.set(nome)
      produto.campo_email.set(email)
      Helpers.set_mask produto.campo_telefone, telefone
      produto.campo_assunto.set(assunto)
    end
  
    def self.lead_pf(produto, nome, cpf, email, telefone, assunto)
      self.lead(produto, nome, email, telefone, assunto)
      Helpers.set_mask produto.campo_cpf_cnpj, cpf
    end
  
    def self.lead_pj(produto, nome, cnpj, email, telefone, assunto)
      self.lead(produto, nome, email, telefone, assunto)
      Helpers.set_mask produto.campo_cpf_cnpj, cnpj
    end
end