class ProdutoPage < SitePrism::Page

    # Elementos adicionar ao carrinho
    element :botao_adicionar_ao_carrinho, "#product-addtocart-button"
    element :quantidade_carrinho, ".counter-number"
  
    # Elementos avaliação
    element :botao_avaliar, ".action .add"
    element :resultado_avaliacao, ".rating-result"
    elements :bloco_avaliacao, "#customer-reviews"
    element :input_nota_avaliacao, "#Nota_1_label"
    element :input_nome, "#nickname_field"
    element :input_email, "#email_field"
    element :input_titulo, "#summary_field"
    element :input_review, "#review_field"
    element :botao_enviar_avaliacao, ".submit"
    
    
    elements :alerta_campos_obrigatorios, ".mage-error"
    element :mensagem_avaliacao_sucesso, ".message-success"
  
    # Elementos adicionar ao carrinho
    element :personalizar_adicionar, "#bundle-slide"
    element :primeiro_item_radio, "input[type=radio]", match: :first
  
    # Elementos LEAD
    element :botao_lead, ".lead"
    element :modal_lead, "#form-content-lead"
    element :botao_enviar_lead, ".lead__submit"
    element :campo_nome, "#lead-name"
    element :campo_cpf_cnpj, "#lead-cpfcpnj"
    element :campo_email, "#lead-email"
    element :campo_telefone, "#lead-phone"
    element :campo_telefone_celular, "#lead-mobilephone"
    element :campo_assunto, "#lead-comment"
    element :botao_confirmar_modal, ".action-primary"
    element :alerta_sucesso_lead, ".modal-title"
    element :alerta_obrigado_lead, ".modal-content", match: :first
    element :numero_lead, "#lead-mobilephone"
    element :erro_lead, "#lead-name-error"
    element :erro_email_lead, "#lead-email-error"
  
    #Lista de Produtos
    def treinamento_taf
      find("h2", exact_text: "TOTVS Backoffice (Linha Protheus) - TAF Contábil MP").click
    end
  
    def digibee
      find("h2", exact_text: "Plataforma de Integração by Digibee").click
    end
  
    def treinamento_gooddata
      find("h2", exact_text: "TOTVS Fluig - Plataforma GoodData Restrição SP").click
    end
  
    def treinamento_advpl
      find("h2", exact_text: "TOTVS Backoffice (Linha Protheus) - ADVPL Avançado Restrição Cartão").click
    end
  
    def eleve_vendas_controle_basico
      find("h2", exact_text: "Eleve Vendas Controle Básico").click
    end
  
    def eleve_gestao_basico_mensal
      find("h2", exact_text: "Eleve Gestão - Básico (Mensal)").click
    end

    def eleve_saude_online
      find("h2", exact_text: "Eleve Saúde Online - 1 Usuário").click
    end
end