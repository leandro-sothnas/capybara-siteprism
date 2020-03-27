require 'faker'

Dado('que estou na pagina da loja') do
  @home_page.load
end

Quando('busco um produto inexistente') do
  product = 'algum produto'
  # product = Faker::Lorem.word
  @home_page.search_product(product)
end

Então('recebo a mensagem de erro junto ao nome do produto') do
  msg = 'No results were found for your search "algum produto"'
  # msg = 'No results were found for your search  ' + '"' + product + '"'
  expect(@home_page.verify_message).to have_content msg
end

Quando('busco por um produto') do
  product = 'blouse'
  @home_page.search_product(product)
end

Então('devo ver o produto na lista') do
  product = 'blouse'
  expect(@home_page.verify_product).to have_content product.capitalize
end

Quando('busco sem preencher campo de busca') do
  product = ''
  @home_page.search_product(product)
end

Então('recebo a mensagem {string}') do |message|
  expect(@home_page.verify_message).to have_content message
end
