***Settings***
Documentation       Aqui temos todas as palavras chaves de automaçao dos comportamentos

***Keywords***
#Steps Compra
Dado que o cliente tem cadastro no site
    Open Page

Então devo realizar login no site com o email "${email}" e senha "${senha}"
    Login With      ${email}        ${senha}

E valido se usuario foi logado com sucesso
   Logout Link Should Be visible

Quando adicionar o produto "${produto1}" e ${produto2} no carrinho
    Add to cart     ${produto1}     ${produto2}

Entao devo finalizar compra
    Finish shopping

E validar a mensagem de confirmacao "${message}"
    Alert Should Be         ${message}


#Steps Cadastro
Dado Navegue para a pagina de cadastro
    Open Page Create

E realizo o cadastro do usuario com os parametros: "${email}", "${nome1}", "${nome2}", "${senha}", "${dia}", "${mes}", "${ano}", "${casa}", "${endereco}", "${cidade}", "${estado}", "${cep}", "${tel}"
    Create User       ${email}          ${nome1}         ${nome2}        ${senha}     ${dia}       ${mes}     ${ano}    ${casa}     ${endereco}      ${cidade}     ${estado}    ${cep}    ${tel}
