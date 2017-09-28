#language: pt
#encoding: utf-8

@Formulario
Funcionalidade: Formulario

  @form_fill
  Cenário: Preenchendo dados do formulario.
    Dado que acesse a tela de formulario
    E preencher os campos do formulario.
      | Texto | 'ABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%¨&*()+^",.;/' |
      | language  | Ruby |
      | ruby  | A programming language |
      | versions  | 1.8.6 |
    E Selecionar a opcao "Enviar"
    Então Deve informar uma mensagem de sucesso "Thank you for playing with Watir-WebDriver".

