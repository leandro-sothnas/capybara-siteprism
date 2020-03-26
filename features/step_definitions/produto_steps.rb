Dado('que eu acesso a pagina do produto') do
  @produto_page.load
end

Quando('mudo a quantidade do produto para {string}') do |quantidade|
  @produto_page.mudar_quantidade(quantidade)
end

Então('ao adicionar no carrinho vejo a {string}') do |quantidade|
  # qtd = quantidade.sub!('^0+', '')
  expect(@produto_page.quantidade_carrinho).to have_content(quantidade)
end

Então('ao adicionar no carrinho vejo o erro {string}') do |mensagem|
  expect(@produto_page.verifica_msg_erro).to have_content(mensagem)
end

Quando('mudo o tamanho do produto para {string}') do |tamanho|
  @produto_page.mudar_tamanho(tamanho)
end

Então('ao adicionar no carrinho vejo esta {string}') do |especificacao|
  expect(@produto_page.verifica_msg_carrinho).to have_content(especificacao)
end

Quando('mudo a cor do produto para {string}') do |cor|
  @produto_page.mudar_cor(cor)
end

Quando('mudo o {string} e {string}') do |tamanho, cor|
  @produto_page.mudar_tamanho(tamanho)
  @produto_page.mudar_cor(cor)
end

Quando('mudo a {string} o {string} e a {string}') do |quantidade, tamanho, cor|
  @produto_page.mudar_atributos(quantidade, tamanho, cor)
end

Então('ao adicionar no carrinho vejo a {string} e a {string}') do |quantidade, especificacao|
  expect(@produto_page.verifica_msg_completo).to have_content(quantidade, especificacao)
end
