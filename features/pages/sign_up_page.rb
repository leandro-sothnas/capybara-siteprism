require_relative '../sections/authentication_section'
# acesso a pagina de autenticacao
class SignUpPage < SitePrism::Page
  set_url '/index.php?controller=authentication'

  section :authentication, AuthenticationSection, '#columns'

  ## metodo para cadastrar
  def sign_up(email)
    authentication.input_email_create.set(email)
    authentication.button_submit_create.click
  end

  ## verificar mensagem de alerta
  def alerta_cadastro
    authentication.alert_account_error
  end

  ## verificar mensagem de da pagina de cadastro
  def title_sign_up
    authentication.page_heading
  end

  def create_account(name, last_name, password, address, city, state, zip, phone)
    authentication.input_name.set(name)
    authentication.input_lastname.set(last_name)
    authentication.input_passwd.set(password)
    authentication.input_address.set(address)
    authentication.input_city.set(city)
    authentication.select_state.first('option', text: state).select_option
    authentication.input_zip.set(zip)
    authentication.input_phone.set(phone)
    authentication.button_register.click
  end
end
