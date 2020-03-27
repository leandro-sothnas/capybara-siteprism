require_relative '../sections/product_section'

# acesso a pagina do produto
class ProductPage < SitePrism::Page
  set_url '/index.php?id_product=5&controller=product'

  section :product, ProductSection, '#buy_block'
  section :product_cart, ProductSection, '#layer_cart'
  section :product_cart_error, ProductSection, '.fancybox-inner'

  def change_quantity(qtt)
    product.input_quantity_wanted.set qtt
  end

  def change_size(product_size)
    product.size_select.select(product_size)
  end

  def change_color(color)
    product.color_list.click_on color
  end

  def change_specifications(quantity, product_size, color)
    change_quantity(quantity)
    change_size(product_size)
    change_color(color)
  end

  def check_cart_quantity
    product.button_add_cart.click
    product_cart.layer_product_quantity
  end

  def check_cart_message
    product.button_add_cart.click
    product_cart.info_cart
  end

  def check_error_message
    product.button_add_cart.click
    product_cart_error.alert_null_quantity
  end

  def check_complete_cart_message
    product.button_add_cart.click
    product_cart.layer_product_quantity
    product_cart.info_cart
  end
end
