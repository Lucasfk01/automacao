Before do
    page.driver.browser.manage.window.maximize
    @home = HomePage.new
    @identity = IdentityPage.new
    @cadastro = CadastroPage.new
    @checkout = CheckoutPage.new
    @produto = ProdutoPage.new
    @pagamento = PagamentoPage.new
end

After ("@logout") do
    sleep 1
    @home.wait_until_conta_visible
    @home.conta[0].click
    @home.logout
    @identity.wait_until_input_email_visible
    @identity.wait_until_input_senha_visible
end