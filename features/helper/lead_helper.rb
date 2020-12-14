class Lead
    def self.lead(produto, nome, email, telefone, telefone_celular, assunto)
      produto.campo_nome.set(nome)
      produto.campo_email.set(email)
      produto.campo_telefone_celular.set(telefone_celular)
      Helpers.set_mask produto.campo_telefone, telefone
      produto.campo_assunto.set(assunto)
    end
  
    def self.lead_pf(produto, nome, cpf, email_errado, telefone, telefone_celular, assunto)
      self.lead(produto, nome, email_errado, telefone, telefone_celular, assunto)
    end
  
    def self.lead_pj(produto, nome, cnpj, email, telefone, telefone_celular, assunto)
      self.lead(produto, nome, email, telefone, telefone_celular, assunto)
    end
end