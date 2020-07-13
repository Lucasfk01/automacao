Quando("ele clicar no carrinho de compras") do
    @home.carrinho.click
  end
  
  Então("o carrinho deverá estar vazio") do
    @home.wait_until_carrinho_vazio_visible
    expect(@home).to have_current_path("/br/checkout/cart/")
    expect(@home).to have_botao_voltar_para_home
end

Quando("ele acessar a oferta") do
    @produto.treinamento_taf
  end
  
  Quando("adicionar o produto ao carrinho") do
    @produto.botao_adicionar_ao_carrinho.click
    expect(@checkout).to have_botao_fechar_pedido
    expect(@checkout).to have_botao_compartilhar_carrinho
    expect(@checkout).to have_bloco_desconto
  end
  
  Então("poderá remover o produto do carrinho") do
    @checkout.remover_do_carrinho.click
    @home.wait_until_carrinho_vazio_visible
  end
  
  Então("permanecer no checkout") do
    expect(@produto).to have_current_path("/br/checkout/cart/")
    expect(@home).to have_botao_voltar_para_home
end

Então("poderá compartilhar o carrinho por e-mail") do
    @checkout.compartilhar_carrinho.click
    @checkout.wait_until_modal_compartilhar_visible
    @checkout.wait_until_usuario_compartilhar_carrinho_visible
    sleep 1
    @checkout.usuario_compartilhar_carrinho.set @nome
    @checkout.email_compartilhar_carrinho.set @email_carrinho
    @checkout.enviar_carrinho.click
    @checkout.wait_until_modal_carrinho_enviado_visible
    expect(@checkout).to have_modal_carrinho_enviado
    puts "O carrinho foi enviado para o e-mail #{@email_carrinho}"
end
