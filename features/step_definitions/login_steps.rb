Dado('que eu esteja na pagina de autenticacao') do
  @login_page.load
end

Quando('faco login com {string} e {string}') do |email, senha|
  @login_page.logar(email, senha)
end

Entao('vejo a mensagem de boas vindas {string}') do |mensagem|
  expect(@login_page.mensagem).to have_content mensagem
end

Entao('vejo a mensagem de alerta {string}') do |mensagem|
  expect(@login_page.alerta).to have_content mensagem
end
