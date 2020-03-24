require_relative '../sections/home_section'

# class home
class HomePage < SitePrism::Page
  set_url '/'

  section :home_top, ProdutoSection, '.header-container'
  section :home_center, ProdutoSection, '#center_column'

  # metodo para fazer busca
  def buscar(produto)
    home_top.campo_busca.set(produto)
  end

  def verifica_mensagem
    home_top.button_search.click
    home_center.alerta_busca
  end

  def verifica_produto
    home_top.button_search.click
    home_center.product_list
  end
end
