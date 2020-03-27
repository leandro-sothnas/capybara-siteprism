require 'faker'

Dado('que eu acesso a pagina autenticacao') do
  @sign_up_page.load
end

Quando('preencho o email com {string}') do |email|
  @sign_up_page.sign_up(email)
end

Então('vejo a mensagem de titulo do cadastro {string}') do |message|
  expect(@sign_up_page.title_sign_up).to have_content message
end

Quando('preencho o email') do
  email = Faker::Internet.email
  @sign_up_page.sign_up(email)
end

Dado('que estou na pagina de finalizar cadastro') do
  steps %(
    Dado que eu acesso a pagina autenticacao
    Quando preencho o email
    Então vejo a mensagem de titulo do cadastro "CREATE AN ACCOUNT"
  )
  # @sign_up_page.load
  # email = Faker::Internet.email
  # @sign_up_page.sign_up(email)
end

Quando('quando preencho os campos') do
  name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  password = Faker::Alphanumeric.alphanumeric(number: 10, min_numeric: 3)
  address = Faker::Address.street_address
  city = Faker::Address.city
  state = 'Alaska'
  zip = '00000'
  phone = Faker::PhoneNumber.cell_phone
  @sign_up_page.create_account(name, last_name, password, address, city, state, zip, phone)
end
