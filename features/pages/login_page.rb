require_relative '../sections/authentication_section'
# acesso a pagina de autenticacao
class LoginPage < SitePrism::Page
  set_url '/index.php?controller=authentication'

  section :authentication, AuthenticationSection, '#center_column'

  ## metodo para fazer login
  def login_in(email, password)
    authentication.input_email.set(email)
    authentication.input_passwd.set(password)
    authentication.button_login.click
  end

  ## metodo para verificar mensagem de boas vindas
  def welcome_message
    authentication.welcome_msg
  end

  ## metodo para verificar mensagem de alerta
  def alert_login
    authentication.alert_login
  end
end
