Dado('que eu esteja na pagina de autenticacao') do
  @login_page.load
end

Quando('faco login com {string} e {string}') do |email, password|
  @login_page.login_in(email, password)
end

Entao('vejo a mensagem de boas vindas {string}') do |message|
  expect(@login_page.welcome_message).to have_content message
end

Entao('vejo a mensagem de alerta {string}') do |message|
  expect(@login_page.alert_login).to have_content message
end
