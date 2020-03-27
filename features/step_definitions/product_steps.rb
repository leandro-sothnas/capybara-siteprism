Dado('que eu acesso a pagina do produto') do
  @product_page.load
end

Quando('mudo a quantidade do produto para {string}') do |quantity|
  @product_page.change_quantity(quantity)
end

Então('ao adicionar no carrinho vejo a {string}') do |quantity|
  # qtd = quantity.sub!('^0+', '')
  expect(@product_page.check_cart_quantity).to have_content(quantity)
end

Então('ao adicionar no carrinho vejo o erro {string}') do |message|
  expect(@product_page.check_error_message).to have_content(message)
end

Quando('mudo o tamanho do produto para {string}') do |product_size|
  @product_page.change_size(product_size)
end

Então('ao adicionar no carrinho vejo esta {string}') do |specification|
  expect(@product_page.check_cart_message).to have_content(specification)
end

Quando('mudo a cor do produto para {string}') do |color|
  @product_page.change_color(color)
end

Quando('mudo o {string} e {string}') do |product_size, color|
  @product_page.change_size(product_size)
  @product_page.change_color(color)
end

Quando('mudo a {string} o {string} e a {string}') do |quantity, product_size, color|
  @product_page.change_specifications(quantity, product_size, color)
end

Então('ao adicionar no carrinho vejo a {string} e a {string}') do |quantity, specification|
  expect(@product_page.check_complete_cart_message).to have_content(quantity, specification)
end
