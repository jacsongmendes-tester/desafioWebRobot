***Settings***
Documentation   Suite dos testes de cadastos 

Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Test Cases***
Cadastro Simplificado  
    Dado Navegue para a pagina de cadastro
    E realizo o cadastro do usuario com os parametros: "testeautomated@gmail.com", "Jacson", "Gomes Mendes", "12345678", "13", "June", "1994", "Casa", "RUA DIRETA DE TANCREDO NEVES", "Salvador", "California", "00000", "71993064176"
