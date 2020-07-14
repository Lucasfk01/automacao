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