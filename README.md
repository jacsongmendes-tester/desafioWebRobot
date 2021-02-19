# desafioWebRobot
Projeto de automação desafio web, desenvolvido em RobotFramework

Pre-requisitos: 
Python Instalado e Variavel de ambiente configurada 
Cmder instalado
RobotFrameWork Instalado 


Versão Utilizada: 
Python:  3.9.1
Cucumber: 5.1.0 
RobotFrameWork: 3.2.2


Principais Pastas: 
\automation-web-datum\tests: coloquei o arquivo "\automation-web-datum\desafioweb\tests\cadastro_usuario.robot e comprar_itens.robot  com os cenários de teste escritos no formato BDD.
\automation-web-datum\resources\controller_kws.robot: nesta arquivo coloquei os passos com todas as palavras chaves de automaçao dos comportamentos.
\automation-web-datum\resources\pages\elements.robot: nesta arquivo coloquei os elementos da página, apenas para melhorar reutilizaçao e manutenção. 
\automation-web-datum\resources\base.robot: neste arquivo temos a estrutura base do projeto, o selenium é importado aqui
\automation-web-datum\desafioweb\resources\actions: nesta pasta estao as keywords responsaveis pela interação na pagina web

Passos de Execução: 
1- Abra o cmder 
2- Entre no diretorio raiz do projeto 
3- Execute qualquer o comando de execuçao descrito abaixo:

Comandos de Execução:
robot -d ./logs tests\cadastro_usuario.robot
robot -d ./logs tests\comprar_itens.robot
