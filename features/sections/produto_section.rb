## class section da pagina inicial
class ProdutoSection < SitePrism::Section
  element :campo_busca, '#search_query_top'
  element :alerta_busca, '.alert-warning'
  element :button_search, '.button-search'
  element :product_list, '.product_list'
end
