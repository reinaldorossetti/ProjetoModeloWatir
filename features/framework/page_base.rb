
class PageBase
  include Tapestry

  def preencher(element, value)
    #binding.pry
    result = element_exists?(element)
    if result
      # to_subtype - convert the input into the more specific type in text field to clear field.
      element.to_subtype.clear
      element.focus
      #element.flash(color: "yellow")
      element.send_keys value
    end
  rescue Selenium::WebDriver::Error::UnexpectedAlertOpenError
    sleep 2
    $driver.alert.ok
    retry
  end

  def clique(elem)

    # Mapeia o elemento e verifica se o elemento existe e visivel.
    element_exists?(elem)
    puts elem.inspect
    # Imprime o elemento e scroll/desce ateh o elemento.
    scroll_to_element(elem)

    # coloca o foco sobre o elemento e realiza o click.
    elem.focus
    elem.flash(color: "yellow")
    elem.click

  rescue => ex
    puts ex.message
    puts ex.backtrace
    false

  end

  def element_exists?(web_element)
    # na nova versao a espera fica assim .wait_until(&:present?)
    # puts Watir.default_timeout
    if web_element.wait_until(&:present?)
      true
    end

  rescue => ex
    puts ex.message
    puts ex.backtrace
    print "Tela #{$driver.title} - Elemento '#{web_element.inspect}' não encontrado."
    false

  end

  def scroll_to_element(elem)

    $driver.execute_script 'arguments[0].scrollIntoView();', elem

  rescue => ex
    puts ex.message
    false
  end

  def obter_evidencia
    $encoded_img = $driver.driver.screenshot_as(:base64)
  end

  def fechar
    $driver.quit
  end

  def titulo
    $driver.title
  end

  def texto(menu_result)
    elem = menu_result.result_end
    elem.text if element_exists?(elem)
  end

  def validar(resultado, valor)
    expect(resultado) == (valor)
  end

end
