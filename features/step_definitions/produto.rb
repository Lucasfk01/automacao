Quando("tentar enviar uma avaliação do produto com os campos em branco") do
  @produto.wait_until_resultado_avaliacao_visible
  @produto.botao_avaliar.click  
  @produto.botao_enviar_avaliacao.click
  end
  
  Então("será exibido os alertas em todos os campos") do
    expect(@produto).to have_alerta_campos_obrigatorios(:count => 14)
end

Quando("tentar enviar uma avaliação com um e-mail invalido") do
  @produto.wait_until_resultado_avaliacao_visible
  @produto.botao_avaliar.click  
  @produto.botao_enviar_avaliacao.click  
  Avaliacao.avaliacao(@produto, @avaliacao, @nome, "emaildetestes", @titulo, @review, @enviar_avaliacao)
  end
  
  Então("será exibido um alerta no campo e-mail") do
    expect(@produto).to have_alerta_campos_obrigatorios(:count => 2)
end

Quando("realizar uma avaliação com dados válidos") do
  @produto.wait_until_resultado_avaliacao_visible
  @produto.botao_avaliar.click  
  @produto.botao_enviar_avaliacao.click 
  Avaliacao.avaliacao(@produto, @avaliacao, @nome, @email, @titulo, @review, @enviar_avaliacao)
  end
  
  Então("será exibida uma mensagem de sucesso") do
    @produto.wait_until_mensagem_avaliacao_sucesso_visible
    puts "O email que enviou a avaliação é #{@email}"
end

Quando("ele acessar a oferta do LED") do
    @produto.digibee
  end
  
  Quando("solicitar o contato") do
    @produto.botao_lead.click
    @produto.wait_until_modal_lead_visible
  end
  
  Quando("tentar submeter o formulário com dados em branco") do
    @produto.botao_enviar_lead.click
  end
  
  Então("serão exibidos os alertas nos campos em branco do formulário") do
    expect(@produto).to have_alerta_campos_obrigatorios
end

Quando("tentar submeter o formulário com dados inválidos") do
    Lead.lead_pf(@produto, @nome, @cpf, @email_errado, @telefone, @telefone_celular, @assunto)
    @produto.botao_enviar_lead.click
  end
  
  Então("serão exibidos os alertas nos campos inválidos do formulário") do
    expect(@produto).to have_erro_email_lead
end

Quando("preencher os dados solicitados de PJ") do
  Lead.lead_pj(@produto, @nome, @cnpj, @email, @telefone, @telefone_celular, @assunto)
  @produto.botao_enviar_lead.click
end
  
  Então("o formulário será enviado com sucesso") do
    @produto.wait_until_botao_confirmar_modal_visible
    expect(@produto.alerta_sucesso_lead.text).to eq @alerta_sucesso_lead_texto
    expect(@produto.alerta_obrigado_lead.text).to eq @alerta_obrigado_lead_texto
end


  