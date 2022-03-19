Quando('clico no botao') do
  @ajax = AjaxPage.new  # instanciar a classe AjaxPage
  @ajax.load
  @ajax.clico_botao
end

Entao('verifico se apareceu') do
  @ajax.wait_until_mensagem_visible  ## undefined method `wait_for_mensagem' como foi passado no curso não
  ## funcionou mas o Ruby retornou com o correto (wait_until_mensagem_visible) USADO QUANDO A INTERNET ESTA DEMORANDO PARA ABRIR, OU DELEI.
  expect(@ajax.mensagem.text).to eql 'Você Clicou no Botão!'
end

