 class IdentityPage < SitePrism::Page
    element :input_email, "#emailAddress"
    element :input_senha, "#password"
    element :botao_login, ".btn", match: :first
    element :cadastrar, "#signup"
    element :menu_sair, ".action.switch"
  
    #Alertas login
    def alerta_login_invalido
      assert_text("Desculpe, seu endereço de e-mail ou senha estão incorretos")
    end
end