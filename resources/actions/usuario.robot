***Settings***
Documentation       Ações da pagina de login e compras

***Keywords***
Open Page Create
    Go To      ${login_url} 

Create User
    [Arguments]           ${email}        ${nome1}         ${nome2}        ${senha}     ${dia}       ${mes}     ${ano}    ${casa}     ${endereco}      ${cidade}     ${estado}    ${cep}    ${tel}
    Fill Text                   ${CAMPO_EMAIL_CAD}        ${email}
    Click                      ${BOTAO_CRIAR}
    Fill Text                   ${PRIMEIRO_NOME}        ${nome1}
    Fill Text                   ${ULTIMO_NOME}          ${nome2}
    Fill Text                   ${CAMPO_SENHA_CAD}      ${senha} 
    Fill Text                   ${CAMPO_COMPANY}        ${casa} 
    Fill Text                   ${CAMPO_ENDERECO}       ${endereco}
    Fill Text                   ${CAMPO_CIDADE}         ${cidade}  
    Fill Text                   ${CAMPO_CEP}            ${cep}   
    Fill Text                   ${CAMPO_TEL}            ${tel}  
    Fill Text                   ${CAMPO_TEL_MOB}        ${tel}  
    Fill Text                   ${CAMPO_ADICIONAL}      ${casa}
    Check Checkbox              ${RADIO_SEXO}  
    Select Options By           ${CAMPO_ESTADO}         ${estado}           
    Select Options By           css=#days               attribute=value   
    Select Options By           css=#months             attribute=value
    Select Options By           css=#years               attribute=value
    Click               ${BOTAO_REGISTRAR} 


