Before "@avaliacao" do
    @nome = Faker::Games::Pokemon.name
    @email = @nome.downcase + "@mailinator.com"
    @titulo = "Teste automatizado avaliando o produto"
    @review = Faker::ChuckNorris.fact
  end
  
  Before "@lead" do
    @nome = Faker::Games::Pokemon.name
    @cpf = Faker::CPF.numeric
    @cnpj = Faker::CNPJ.numeric
    @email = @nome.downcase + "@mailinator.com"
    @telefone = "11999999999"
    @assunto = Faker::ChuckNorris.fact
  
    @alerta_sucesso_lead_texto = "Recebemos as suas informações. Muito obrigado!"
    @alerta_obrigado_lead_texto = "Em breve entraremos em contato."
  end