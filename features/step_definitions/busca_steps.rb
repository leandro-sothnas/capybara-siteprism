require 'faker'

Dado('que estou na pagina da loja') do
  @home_page.load
end

Quando('busco um produto inexistente') do
  produto = 'algum produto'
  # produto = Faker::Lorem.word
  @home_page.buscar(produto)
end

Então('recebo a mensagem de erro junto ao nome do produto') do
  msg = 'No results were found for your search "algum produto"'
  # msg = 'No results were found for your search  ' + '"' + produto + '"'
  expect(@home_page.verifica_mensagem).to have_content msg
end

Quando('busco por um produto') do
  produto = 'blouse'
  @home_page.buscar(produto)
end

Então('devo ver o produto na lista') do
  produto = 'blouse'
  expect(@home_page.verifica_produto).to have_content produto.capitalize
end

Quando('busco sem preencher campo de busca') do
  produto = ''
  @home_page.buscar(produto)
end

Então('recebo a mensagem {string}') do |mensagem|
  expect(@home_page.verifica_mensagem).to have_content mensagem
end
