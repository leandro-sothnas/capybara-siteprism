Before do
  @home_page = HomePage.new
  @login_page = LoginPage.new
  @cadastro_page = CadastroPage.new
  @produto_page = ProdutoPage.new

  # page.current_window.resize_to(1920, 1080) if ENV["BROWSER"] == "chrome"
  page.current_window.resize_to(900, 1024) if ENV['BROWSER'] == 'chrome'
end
