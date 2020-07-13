class CheckoutPage < SitePrism::Page

    # produto adicionado ao carrinho
    element :botao_fechar_pedido, "[data-role='proceed-to-checkout']"
    element :botao_compartilhar_carrinho, "#share_cart_button"
    element :remover_do_carrinho, ".action-delete"
    element :modal_validar_numero, "#modal-validation-phones-contact-phone"
    element :celular_validado, "#celular1"
    element :celular_contato, "#celular2"
  
    def btn_proximo
      click_button "Próximo"
    end
  
    # cupom de desconto
    elements :bloco_desconto, "#block-discount"
    element :abrir_bloco_cupom, "#block-discount-heading"
    element :input_cupom_de_desconto, "#coupon_code"
    element :botao_aplicar_desconto, "[value='Aplicar']"
    element :botao_cancelar_cupom, "[value='Cancelar Cupom']"
    element :validacao_cupom, ".discount > .mark"
  
    # Compartilhar carrinho
    element :compartilhar_carrinho, "#share_cart_button"
    element :modal_compartilhar, "#modal-content-share"
    element :usuario_compartilhar_carrinho, "#share_email_receiver"
    element :enviar_carrinho, ".sendMail button"
    element :modal_carrinho_enviado, :xpath, "//span[contains(text(),'OK')]"
    element :email_compartilhar_carrinho, "#share_email"
end