#Step Definitions 1-lista_de_elementos.rb

Quando('mapeio uma tabela') do
  @lista_de_elementos = MapeandoListas.new
  @lista_de_elementos.load
  @lista_de_elementos.lista.size[1]
  puts @lista_de_elementos.text
  sleep 10

end
