Dado('que eu acesso a pagina do produto') do
  @produto_page.load
end

Quando('mudo a quantidade do produto para {string}') do |quantidade|
  @produto_page.mudar_quantidade(quantidade)
end

Então('ao adicionar no carrinho vejo erro {string}') do |mensagem|
  expect(@produto_page.verifica_msg_erro).to have_content(mensagem)
end

Então('ao adicionar no carrinho vejo a {string} e a {string}') do |mensagem, quantidade|
  # qtd = quantidade.sub!('^0+', '')
  # expect(@produto_page.verifica_msg_carrinho).to have_content(qtd, mensagem)
  expect(@produto_page.verifica_msg_carrinho).to have_content(mensagem, quantidade)
end

Quando('mudo o tamanho do produto para {string}') do |tamanho|
  @produto_page.mudar_tamanho(tamanho)
end

Então('ao adicionar no carrinho vejo a {string} e o {string}') do |mensagem, tamanho|
  expect(@produto_page.verifica_msg_carrinho).to have_content(mensagem, tamanho)
end
