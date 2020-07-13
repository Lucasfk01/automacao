Dado("tenta se logar com dados inválidos") do
    @home.entrar[0].click
    @identity.wait_until_input_email_visible
    Login.login_invalido(@identity, @email_invalido, @senha_invalida, @logar)
  end
  
  Então("será exibido um alerta de dados inválidos") do
    @identity.alerta_login_invalido
end

Quando("ele se autenticar com dados válidos") do
    @home.entrar[0].click
    @identity.wait_until_input_email_visible
    Login.login(@identity, @email, @senha, @logar)
  end
  
  Então("o login será realizado com sucesso") do
    @home.wait_until_nome_logado_visible
    expect(@home).to have_nome_logado
  end
  
  Então("o usuário poderá fazer o logout com sucesso") do
    @identity.menu_sair.click
    @home.conta[0].click
    @home.logout
    expect(@identity).to have_botao_login
end