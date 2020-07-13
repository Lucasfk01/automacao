class CadastroPage < SitePrism::Page
    element :botao_step2, "#nextStep2"
    elements :alerta_campos_obrigatorios, ".mage-error"
    element :input_cpf_cnpj, "#taxvat"
    element :celular_validacao, "#celular_validacao"
    element :modal_cpf, ".modal-title"
    element :email, "#email_address"
    element :nome, "#firstname"
    element :sobrenome, "#lastname"
    element :telefone, "#telephone"
    element :nascimento, "#dob"
    element :senha, "#password"
    element :confirmar_senha, "#password-confirmation"
    element :token, "#codigoPin"
    element :botao_step3, "#nextStep3"
    element :alerta_token_invalido, ".msg"
    element :botao_criar_conta, "#btn-register"
    element :botao_seguir, "#seguir"
    element :mensagem_sucesso_cadastro, "[role='alert']"
    element :cep, "#zip"
    element :numero, "#street_2"
    element :input_razaosocial, "#firstname"
    element :input_nome_fantasia, "#lastname"
    element :estado_ie, "select[id='document_two_region']"
    element :input_responsavel, "#responsible"
    element :input_cpf_responsavel, "#responsible_taxvat"
    element :input_site, "#site"
    element :check_isento, "#document_two_na"
    element :input_inscricao_estadual, "#document_two"
  
    def alerta_cadastro_sucesso
      assert_text("Obrigado por registrar-se com TOTVS Store.")
    end
end