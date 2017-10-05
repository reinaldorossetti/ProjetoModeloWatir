if ENV['BASE'] == false
  require '../framework/page_base' # para visualizar as funcoes dentro da classe mae PageBase.
end

class TestSuite < PageBase
  include Tapestry

  def initialize(driver)
    @form = FormSelectors.new(driver)
  end

  def preencher_formulario(texto, language, ruby, versions)
    preencher(@form.text, texto)
    @form.combobox.select language

    case ruby
      when 'A programming language'
        clique(@form.test_radio)
      when 'A gem'
        clique(@form.test_radio_gem)
      else 'Both'
        clique(@form.both)
    end

    case versions
      when '1.8.6'
        clique(@form.versions01)
      when '1.8.7'
        clique(@form.versions02)
      when '1.9.2'
        clique(@form.versions03)
    end
  end

  def enviar_formulario
    clique(@form.submit)
  end
end
