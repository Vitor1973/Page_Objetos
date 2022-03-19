class Sessao < SitePrism::Section

  #MAPEAR OS ELEMENTOS DA SESSAO NAVIBAR
  element :youtube, 'a[href="https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA"]'
  element :medium, 'a[href="https://medium.com/automa%C3%A7%C3%A3o-com-batista"]'
end

class Pagina < SitePrism::Page
  set_url '/buscaelementos/radioecheckbox'
  section :navbar, Sessao, '.nav-wrapper' ##Deu erro pq esqueci de colocar o ponto na frente do .nav_wrapper.


end
