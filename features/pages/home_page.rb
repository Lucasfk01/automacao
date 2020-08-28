class HomePage < SitePrism::Page
    set_url "https://mirror.totvs.store"

    element :header_topo, ".header .links li"
    element :logo, ".logo"
    element :busca, "#search"
    element :carrinho, ".showcart"
    element :menu, ".navigation"
    elements :entrar, ".authorization-link a"
    elements :conta, ".customer-name"

    # Resultado busca
    element :busca_sem_retorno, ".result__message-not-found"
    element :produtos, ".widget-product-content"

    # Boas vindas
    element :nome_logado, ".logged-in"

    # Carrinho vazio
    element :carrinho_vazio, ".cart-empty"
    element :botao_voltar_para_home, ".cart-empty__go_back"

  def logar
    click_link "Entrar"
  end

  def logout
    click_link "Sair", match: :first
  end

  def criar_nova_conta
    click_link "Criar Conta"
  end
end