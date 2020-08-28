Before "@dados_pagamento" do
    @numero_cartao_credito = "4111111111111111"
    @num_cartao_credito_visa = "4012888888881881"
    @num_cartao_credito_master = "5555555555555557"
    @num_cartao_credito_american = "371449635398431"
    @num_cartao_invalido = "123"
    @nome_titular_cartao = Faker::GreekPhilosophers.name
    @validade_mes = "04"
    @validade_ano = "2021"
    @cod_seguranca = "123"
    @selecionar_cartao_da_adesao = "MESMO CARTÃO DA ADESÃO"
  
    @boleto = "BOLETO"
  
    @cupom_valido = "TESTETOTVS"
    @cupom_invalido = "cupom-de-testes"
end