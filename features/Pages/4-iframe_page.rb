class PaginaIframe < SitePrism::Page
  element :nome, '#first_name'
  element :ultimo_nome, '#last_name'
  element :senha, '#password'
  element :email, '#email'
  element :textarea, '#textarea1'
  #element :botao, 'btn_red' #/html/body/div[2]/div[2]/div[2]/form/div[6]/div/a

  def clico_botao
    botao.click
    #has_botao   #Ajax wait_for usado por causa de deleis no sistema, ele aguarda o botão ser clicado.
  end

end

class PaginaPadrao < SitePrism::Page
  set_url '/mudancadefoco/iframe'  # pagina que está puxando
  iframe :preencher_campo, PaginaIframe, '#id_do_iframe'


end
