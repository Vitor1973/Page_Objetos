Quando('preencho os campos') do
  @pagina_iframe = PaginaPadrao.new   # Estava puxando a classe errada PaginaIframe
  visit '/mudancadefoco/iframe'

  sleep 10

  @pagina_iframe.preencher_campo do |iframe|
  iframe.nome.set'Vitor'
  iframe.ultimo_nome.set'Devechi'
  iframe.senha.set"vec@123456"
  iframe.email.set"devechi.vitor@gmail.com"
  iframe.textarea.set"klm"



  end

end

