require_relative '../sections/produto_section'

# acesso a pagina do produto
class ProdutoPage < SitePrism::Page
  set_url '/index.php?id_product=5&controller=product'

  section :produto, ProdutoSection, '#buy_block'
  section :produto_cart, ProdutoSection, '#layer_cart'
  section :produto_cart_er, ProdutoSection, '.fancybox-inner'

  def mudar_quantidade(qtd)
    produto.qtidade_requerida.set qtd
  end

  def mudar_tamanho(tamanho)
    produto.size_select.select(tamanho)
  end

  def mudar_cor(cor)
    produto.color_list.click_on cor
  end

  def mudar_atributos(quantidade, tamanho, cor)
    mudar_quantidade(quantidade)
    mudar_tamanho(tamanho)
    mudar_cor(cor)
  end

  def quantidade_carrinho
    produto.botao_add_carrinho.click
    produto_cart.product_qtt
  end

  def verifica_msg_carrinho
    produto.botao_add_carrinho.click
    produto_cart.info_cart
  end

  def verifica_msg_erro
    produto.botao_add_carrinho.click
    produto_cart_er.alerta_null_qt
  end

  def verifica_msg_completo
    produto.botao_add_carrinho.click
    produto_cart.product_qtt
    produto_cart.info_cart
  end
end
