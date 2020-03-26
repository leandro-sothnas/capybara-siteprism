require_relative '../sections/produto_section'
# acesso a pagina do produto
class ProdutoPage < SitePrism::Page
  set_url '/index.php?id_product=5&controller=product'

  # section :produto, ProdutoSection, '#center_column'
  # section :produto, ProdutoSection, '.box-info-product'
  section :produto, ProdutoSection, '#buy_block'
  section :produto_cart, ProdutoSection, '#layer_cart'
  section :produto_cart_er, ProdutoSection, '.fancybox-inner'
  # section :produto_select, ProdutoSection, '#uniform-group_1'

  def mudar_quantidade(qtd)
    produto.qtidade_requerida.set qtd
  end

  def mudar_cor(cor)
    produto.color_list.set cor
  end

  def mudar_tamanho(tamanho)
    # produto.size_select.first('option', text: tamanho).select_option
    # produto.size_select.first('title', text: tamanho).select_option
    produto.size_select.select(tamanho)
  end

  # def mudar_tamanho(tamanho)
  #   produto.size_select.first('option', text: tamanho).select_option
  # end

  def mudar_atributos(quantidade, cor, tamanho)
    mudar_quantidade(quantidade)
    mudar_tamanho(cor)
    mudar_cor(tamanho)
  end

  def verifica_msg_carrinho
    produto.botao_add_carrinho.click
    produto_cart.info_cart
  end

  # def verifica_msg_carrinho_completo(quantidade, especificacao)

  #   produto.botao_add_carrinho.click
  #   produto_cart.info_cart
  # end

  def verifica_msg_erro
    produto.botao_add_carrinho.click
    produto_cart_er.alerta_null_qt
  end
end
