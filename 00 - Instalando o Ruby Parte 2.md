
Agora vamos instalar o DevKit, segue o link abaixo para download:
Antes de instalar vamos criar uma pasta no c: do windows chamada RubyDevKit
c:\RubyDevKit

Depois de baixar vamos fazer a instalação do executável.<br>
https://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-32-4.7.2-20130224-1151-sfx.exe

![Ruby DevKit00](https://github.com/reinaldorossetti/ProjetoModeloWatir/blob/master/imgs/ruby06_devkit.PNG)<br>
Ao executar o DevKit, vai mostrar a tela acima, devemos extrair os arquivos dentro da pasta c:\RubyDevKit, pode dar um clique nós três pontinhos e localizar a pasta em Computador >> Disco Local (C:) >> RubyDevKit

![Ruby DevKit01](https://github.com/reinaldorossetti/ProjetoModeloWatir/blob/master/imgs/ruby06_devkit01.PNG)<br>
A imagem mostra o caminho já adicionado.

![Ruby DevKit02](https://github.com/reinaldorossetti/ProjetoModeloWatir/blob/master/imgs/ruby06_devkit02.PNG)<br>
Agora somente dar o clique em **"Extract"**, após isso é somente esperar finalizar a barra de instalação, que automaticamente vai fechar a telinha.


Agora vamos abrir o prompt do windows e digitar os seguintes comandos abaixos:
Comando pra voltar a pasta raiz:
```prompt
cd\
```
Comando para entrar dentro da pasta RubyDevKit
```prompt
cd RubyDevKit
```
Comando para Detectar automaticamente a instalação do Ruby e adicione-as a um arquivo de configuração para a próxima etapa.
```prompt
ruby dk.rb init
```
O Comando Instala o DevKit, vinculando-o à sua instalação do Ruby.
```prompt
ruby dk.rb install
```
Como mostra o exemplo abaixo:
![Instalando o DevKit](https://github.com/reinaldorossetti/ProjetoModeloWatir/blob/master/imgs/promptDevKit.PNG)<br>
