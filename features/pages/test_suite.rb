if ENV['BASE'] == false
  require '../framework/page_base' # para visualizar as funcoes dentro da classe mae PageBase.
end

class TestSuite < PageBase
  include Tapestry

  def test_form_fill(form, table)
    preencher(form.text, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%¨&*()+^",.;/')
    preencher(form.text, '668355466246259407164008005087202092815791810535060957614104444319946225672699870265310769971237802371395980004611997814170330763597577678775112575685')
    form.combobox.select 'Ruby'
    clique(form.test_radio_gem)
    clique(form.versions)
  end

  def submit(form)
    clique(form.submit)
    form.submit.wait_while_present
  end

  def title
    @driver.title
  end

  def close
    @driver.quit
  end

  def result(menu_result)
    menu_result.result_end.text
  end
end
