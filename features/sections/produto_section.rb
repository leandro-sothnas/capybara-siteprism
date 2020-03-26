## class section da pagina inicial
class ProdutoSection < SitePrism::Section
  element :campo_busca, '#search_query_top'
  element :alerta_busca, '.alert-warning'
  element :button_search, '.button-search'
  element :product_list, '.product_list'
  element :qtidade_requerida, '#quantity_wanted'
  element :botao_add_carrinho, '#add_to_cart'
  element :alerta_null_qt, '.fancybox-error'
  element :success_add_layer, '.layer_cart_product'
  element :check_qti_layer, '#layer_cart_product_quantity'
  element :size_select, '#group_1'
  element :color_list, '#color_to_pick_list'
  element :info_cart, '.layer_cart_product_info'
  element :cor_preto, '#color_11'
  element :cor_laranja, '#color_13'
  element :cor_azul, '#color_14'
  element :cor_amarelo, '#color_16'
end
