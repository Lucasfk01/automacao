Dado("que o usuário acessa a home da Store") do
    @home.load
    expect(@home).to have_header_topo(:count => 3)
    expect(@home).to have_logo
    expect(@home).to have_busca
    expect(@home).to have_carrinho
    expect(@home).to have_menu
  end
  
  Quando("ele pesquisar pelo termo {string}") do |busca|
    @home.busca.set busca
    @home.busca.send_keys :enter
  end
  
  Então("a pesquisa deverá retornar sem nenhum resultado") do
    @home.wait_until_busca_sem_retorno_visible
    expect(@home).to have_current_path("/br/catalogsearch/result/?q=#{@home.busca.value}")
    expect(@home).to have_menu
  end

  Então("a pesquisa deverá retornar os produtos relacionados") do
    @home.wait_until_produtos_visible
    expect(@home).to have_busca
    expect(@home).to have_menu
end