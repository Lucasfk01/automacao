class Login
    def self.login(login, email, senha, logar)
      login.input_email.set(email)
      login.input_senha.set(senha)
      login.botao_login.click
    end
  
    def self.login_invalido(login, email_invalido, senha_invalida, logar)
      login.input_email.set(email_invalido)
      login.input_senha.set(senha_invalida)
      login.botao_login.click
    end
end