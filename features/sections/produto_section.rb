## class section da pagina inicial
class ProdutoSection < SitePrism::Section
  # busca produto
  element :campo_busca, '#search_query_top'
  element :alerta_busca, '.alert-warning'
  element :button_search, '.button-search'
  element :product_list, '.product_list'

  # pagina produto
  element :botao_add_carrinho, '#add_to_cart'
  element :qtidade_requerida, '#quantity_wanted'
  element :size_select, '#uniform-group_1'
  element :color_list, '#color_to_pick_list'
  element :product_qtt, '#layer_cart_product_quantity'
  element :info_cart, '.layer_cart_product'
  # element :info_cart, '.layer_cart_product_info'
  element :alerta_null_qt, '.fancybox-error'
end
