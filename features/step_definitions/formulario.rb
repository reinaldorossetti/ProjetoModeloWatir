#encoding: utf-8
require 'magic_encoding'

page = TestSuite.new($driver)
main_result = SelectorsFormResponse.new($driver)
pb = PageBase.new

Dado(/^que acesse a tela de formulario$/) do
  pb.validar(pb.titulo, "Watir-Webdriver Demo")
end

Dado(/^preencher os campos do formulario\.$/) do |table|
  data = table.rows_hash
  page.preencher_formulario(data['texto'], data['language'], data['question'], data['versions'])
  pb.obter_evidencia
end

Dado(/^Selecionar a opcao "([^"]*)"$/) do |arg1|
  page.enviar_formulario if arg1 == "Enviar"
end

Então(/^Deve informar uma mensagem de sucesso "([^"]*)"\.$/) do |arg1|
  resultado =  pb.texto(main_result)
  pb.validar(resultado, arg1)
  pb.obter_evidencia
  pb.fechar
end