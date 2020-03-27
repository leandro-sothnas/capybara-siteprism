## class section do produto
class ProductSection < SitePrism::Section
  # busca produto
  element :input_search, '#search_query_top'
  element :alert_search, '.alert-warning'
  element :button_search, '.button-search'
  element :product_list, '.product_list'

  # pagina produto
  element :button_add_cart, '#add_to_cart'
  element :input_quantity_wanted, '#quantity_wanted'
  element :size_select, '#uniform-group_1'
  element :color_list, '#color_to_pick_list'
  element :layer_product_quantity, '#layer_cart_product_quantity'
  element :info_cart, '.layer_cart_product'
  element :alert_null_quantity, '.fancybox-error'
end
