class PagamentoPage < SitePrism::Page

    # Elementos da página
    element :aceite_termos, "#termos-totvs"
  
    # Elementos cartão
    element :numero_cartao, "[name='payment[cc_number]']"
    element :titular_cartao, "[name='payment[cc_owner]']"
    element :validade_mes, "select[name='payment[cc_exp_month]']"
    element :validade_ano, "select[name='payment[cc_exp_year]']"
    element :cod_de_seguranca, "[name='payment[cc_cid]']"
  
    # Elementos adesão
    element :selecionar_pagamento_adesao, "[name='payment[adesao_options]']"
    element :forma_pagamento, "#totvspayment_adesao_options"
  
    # Elementos mensalidade
    element :forma_pagamento_mensalidade, "#totvspayment_mensalidade_options"
  
    # Restrição por região
    element :modal_restricao, "[data-ui-id='checkout-cart-validationmessages-message-warning']"
  
    #tela de sucesso
    element :visualizar_pedido, ".checkout-success"
    element :numero_pedido, ".order-number"

    #Mensagem cartão inválido
    element :mensagem_cartao_invalido, "[data-ui-id='checkout-cart-validationmessages-message-error']"
  
    def finalizar_pedido
      click_button "Finalizar Pedido"
    end
  
    def mensagem_de_sucesso
      assert_text("Compra realizada com sucesso")
    end
end