## ProjetoModeloWatir
Modelo de uso do Page Object com o Framework Watir.


## Como fazer o debugger do cucumber no terminal.
O primeiro passo é a instalação das gems abaixo, abra o terminal/shell e envie os comandos para instalar das gems.
```
gem install 'pry'
gem install 'pry-debugger'
```
## O segundo passo é adicionar o require abaixo no "env.rb" do projeto.
```ruby
require 'pry' 
```
## Gems adicionais pra fazer remote e com stack.
```
gem install 'pry-remote'
gem install 'pry-stack_explorer'
```

## O terceiro passo é colocar o comando "binding.pry" no ponto que deseja fazer o debugger
```ruby
  def preencher(element, value)
    binding.pry
    result = element_exists?(element)
    if result
      # to_subtype - convert the input into the more specific type in text field to clear field.
      element.to_subtype.clear
      element.focus
      element.flash(color: "yellow")
      element.send_keys value
    end
  rescue Selenium::WebDriver::Error::UnexpectedAlertOpenError
    sleep 2
    @driver.alert.ok
    retry
  end
```

- No exemplo acima podemos dar o comando step para ir para a função "element_exists".<br>
- Caso queira pular o "element_exists" e somente executar a próxima linha mando o comando next.<br>
- Para ver o resultado de result, eu digito o nome da variável "result" no terminal.<br>
- Para finalizar esse bloco de código eu dou finish.<br>
- Se você já conseguiu fazer o que queria, podemos dar o comando "continue" no terminal que vai continuar com o teste e finalizar o pry.<br>


**step**: Etapa de execução na próxima linha ou método. Toma um argumento numérico opcional para passar várias vezes.<br>

**next**: Passar para a próxima linha dentro do mesmo nível. Também leva um argumento numérico opcional para executar várias linhas.<br>

**finish**: Execute o bloco de código atual até retornar um nível acima.<br>

**continue**: Continue a execução do programa e termina a sessão do Pry.<br>

Para mostrar os valores das variáveis é somente digitar o nome dela.<br>

** Você também pode digitar um comando do watir no terminal sem problema.
