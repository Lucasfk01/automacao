Quando("ele se autenticar com os dados válidos") do
  @checkout.botao_fechar_pedido.click
  Login.login(@identity, @email, @senha, @logar)
  end

  Quando("inserir os dados incorretos do cartão") do
    @pagamento.numero_cartao.set(@num_cartao_invalido)
    @pagamento.titular_cartao.set(@nome_titular_cartao)
    @pagamento.validade_mes.select(@validade_mes)
    @pagamento.validade_ano.select(@validade_ano)
    @pagamento.cod_de_seguranca.set(@cod_seguranca)  
    @pagamento.aceite_termos.click
    @pagamento.finalizar_pedido.click
  end
  
  Então("deverá aparecer um erro de dados de cartão inválido") do
    expect(@pagamento).to have_mensagem_cartao_invalido
    @pagamento.wait_until_mensagem_cartao_invalido_visible
end

Quando("ele acessar uma oferta") do
  @produto.eleve_saude_online
  end

  Quando("adicionar o produto no carrinho") do
  @produto.personalizar_adicionar.click
  @produto.botao_adicionar_ao_carrinho.click
  @checkout.botao_fechar_pedido2.click
  end

  Quando("ele se autenticar com dados de login válidos") do
    Login.login(@identity, @email, @senha, @logar)
  end

  Quando("inserir os dados corretos do cartão") do
    @pagamento.numero_cartao2.set(@num_cartao_credito_master)
    @pagamento.titular_cartao2.set(@nome_titular_cartao)
    @pagamento.validade_mes2.select(@validade_mes)
    @pagamento.validade_ano2.select(@validade_ano)
    @pagamento.cod_de_seguranca2.set(@cod_seguranca)
  end
  
  Então("a compra deverá ser realizada com sucesso") do
    @pagamento.finalizar_pedido.click
    @pagamento.wait_until_mensagem_de_sucesso
    expect(@pagamento).to have_mensagem_de_sucesso
end