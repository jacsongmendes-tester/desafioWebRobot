***Settings***
Documentation   Suite dos testes de compras 

Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Test Cases***
Compra de produtos no site
    Dado que o cliente tem cadastro no site
    Então devo realizar login no site com o email "datumqatest@soprock.com" e senha "datum2021"
    E valido se usuario foi logado com sucesso
    Quando adicionar o produto "Blouse" e "Printed Dress" no carrinho
    Entao devo finalizar compra
    E validar a mensagem de confirmacao "Your order on My Store is complete."