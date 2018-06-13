login_page = LoginPage.new

Dado("que estou na tela de login") do
    login_page.load
end

Quando("preencho os dados") do
    login_page.login.set "testes@unveil.com.br"
    login_page.senha.set "Unveil1234"
end

Quando("clico em salvar") do
    login_page.entrar.click    
end

Então("eu logo na aplicação") do
    expect(page).to have_link("Minha conta")
end