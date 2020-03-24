require 'faker'

Dado('que eu acesso a pagina autenticacao') do
  @cadastro_page.load
end

Quando('preencho o email com {string}') do |email|
  @cadastro_page.cadastrar(email)
end

Então('vejo a mensagem de titulo do cadastro {string}') do |mensagem|
  expect(@cadastro_page.titulo_cadastro).to have_content mensagem
end

Quando('preencho o email') do
  email = Faker::Internet.email
  @cadastro_page.cadastrar(email)
end

Dado('que estou na pagina de finalizar cadastro') do
  steps %(
    Dado que eu acesso a pagina autenticacao
    Quando preencho o email
    Então vejo a mensagem de titulo do cadastro "CREATE AN ACCOUNT"
  )
  # @cadastro_page.load
  # email = Faker::Internet.email
  # @cadastro_page.cadastrar(email)
end

Quando('quando preencho os campos') do
  nome = Faker::Name.first_name
  sobrenome = Faker::Name.last_name
  senha = Faker::Alphanumeric.alphanumeric(number: 10, min_numeric: 3)
  endereco = Faker::Address.street_address
  cidade = Faker::Address.city
  estado = 'Alaska'
  zip = '00000'
  telefone = Faker::PhoneNumber.cell_phone
  @cadastro_page.finalizar_cadastro(nome, sobrenome, senha, endereco, cidade, estado, zip, telefone)
end
