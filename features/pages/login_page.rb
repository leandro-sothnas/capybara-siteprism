require_relative '../sections/authentication_section'
# acesso a pagina de autenticacao
class LoginPage < SitePrism::Page
  set_url '/index.php?controller=authentication'

  section :authentication, AuthenticationSection, '#center_column'

  ## metodo para fazer login
  def logar(email, senha)
    authentication.email_.set(email)
    authentication.senha_.set(senha)
    authentication.sign_in.click
  end

  ## metodo para verificar mensagem de boas vindas
  def mensagem
    authentication.mensagem_
  end

  ## metodo para verificar mensagem de alerta
  def alerta
    authentication.login_alert
  end
end
