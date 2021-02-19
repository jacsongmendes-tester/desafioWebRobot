***Settings***
Documentation       Aqui temos a estrutura base do projeto, o selenium é importado aqui

Library     SeleniumLibrary

Resource    controller_kws.robot
Resource    actions/usuario.robot
Resource    actions/itens.robot
Resource    pages/elements.robot


***Variables***
${base_url}     http://automationpractice.com/index.php
${login_url}    http://automationpractice.com/index.php?controller=authentication&back=my-account
***Keywords***
##Hooks 
Open Session
    Open Browser    about:blank      chrome

Close Session
    Close Browser

