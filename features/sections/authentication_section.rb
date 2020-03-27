## classe section de autenticacao e cadastro
class AuthenticationSection < SitePrism::Section
  # pagina de autenticacao
  element :input_email, '#email'
  element :input_passwd, '#passwd'
  element :button_login, '#SubmitLogin'
  element :welcome_msg, 'p[class=info-account]'
  element :alert_login, '.alert-danger'
  element :input_email_create, '#email_create'
  element :button_submit_create, '#SubmitCreate'
  element :alert_account_error, '#create_account_error'

  # pagina de cadastro
  element :page_heading, '.page-heading'
  element :input_name, '#customer_firstname'
  element :input_lastname, '#customer_lastname'
  element :input_address, '#address1'
  element :input_city, '#city'
  element :select_state, '.id_state'
  element :input_zip, '#postcode'
  element :input_phone, '#phone_mobile'
  element :button_register, '#submitAccount'
end
