class AjaxPage < SitePrism::Page

set_url'/buscaelementos/botoes'
element :botao, '#teste'
element :mensagem, '#div1'
sleep 10
def clico_botao
  botao.click
  #has_botao   #Ajax wait_for usado por causa de deleis no sistema, ele aguarda o botão ser clicado.
end

end
