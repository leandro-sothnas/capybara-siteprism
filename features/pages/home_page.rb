require_relative '../sections/product_section'

# class home
class HomePage < SitePrism::Page
  set_url '/'

  section :home_top, ProductSection, '.header-container'
  section :home_center, ProductSection, '#center_column'

  # metodo para fazer busca
  def search_product(product)
    home_top.input_search.set(product)
  end

  def verify_message
    home_top.button_search.click
    home_center.alert_search
  end

  def verify_product
    home_top.button_search.click
    home_center.product_list
  end
end
