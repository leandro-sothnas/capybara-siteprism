require_relative '../sections/authentication_section'
# acesso a pagina de autenticacao
class CadastroPage < SitePrism::Page
  set_url '/index.php?controller=authentication'

  section :authentication, AuthenticationSection, '#columns'

  ## metodo para cadastrar
  def cadastrar(email)
    authentication.email_create.set(email)
    authentication.submit_create.click
  end

  ## verificar mensagem de alerta
  def alerta_cadastro
    authentication.cadastro_alert
  end

  ## verificar mensagem de da pagina de cadastro
  def titulo_cadastro
    authentication.page_heading
  end

  def finalizar_cadastro(nome, sobrenome, senha, endereco, cidade, estado, zip, telefone)
    authentication.firstname.set(nome)
    authentication.lastname.set(sobrenome)
    authentication.senha_.set(senha)
    authentication.endereco.set(endereco)
    authentication.cidade.set(cidade)
    authentication.estado.first('option', text: estado).select_option
    authentication.cep.set(zip)
    authentication.telefone.set(telefone)
    authentication.register_button.click
  end
end
