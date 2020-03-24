## classe section de autenticacao e cadastro
class AuthenticationSection < SitePrism::Section
  # pagina de autenticacao
  element :email_, '#email'
  element :senha_, '#passwd'
  element :sign_in, '#SubmitLogin'
  element :mensagem_, 'p[class=info-account]'
  element :login_alert, '.alert-danger'
  element :email_create, '#email_create'
  element :submit_create, '#SubmitCreate'
  element :cadastro_alert, '#create_account_error'

  # pagina de cadastro
  element :page_heading, '.page-heading'
  element :firstname, '#customer_firstname'
  element :lastname, '#customer_lastname'
  element :endereco, '#address1'
  element :cidade, '#city'
  element :estado, '.id_state'
  element :cep, '#postcode'
  element :telefone, '#phone_mobile'
  element :register_button, '#submitAccount'
end
