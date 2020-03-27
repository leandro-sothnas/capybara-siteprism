Before do
  @home_page = HomePage.new
  @login_page = LoginPage.new
  @sign_up_page = SignUpPage.new
  @product_page = ProductPage.new

  # page.current_window.resize_to(1920, 1080) if ENV["BROWSER"] == "chrome"
  page.current_window.resize_to(900, 1024) if ENV['BROWSER'] == 'chrome'
end
