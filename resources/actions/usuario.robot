***Settings***
Documentation       Ações da pagina de login e compras

***Keywords***
Open Page Create
    Go To      ${login_url} 

Create User
    [Arguments]           ${email}        ${nome1}         ${nome2}        ${senha}     ${dia}       ${mes}     ${ano}    ${casa}     ${endereco}      ${cidade}     ${estado}    ${cep}    ${tel}
    Input Text                   ${CAMPO_EMAIL_CAD}        ${email}
    Click Element                      ${BOTAO_CRIAR}
    Input Text                   ${PRIMEIRO_NOME}        ${nome1}
    Input Text                   ${ULTIMO_NOME}          ${nome2}
    Input Text                   ${CAMPO_SENHA_CAD}      ${senha} 
    Input Text                   ${CAMPO_COMPANY}        ${casa} 
    Input Text                   ${CAMPO_ENDERECO}       ${endereco}
    Input Text                   ${CAMPO_CIDADE}         ${cidade}  
    Select From List By Value           ${CAMPO_ESTADO}         ${estado}           
    Input Text                   ${CAMPO_CEP}            ${cep}   
    Input Text                   ${CAMPO_TEL}            ${tel}  
    Input Text                   ${CAMPO_TEL_MOB}        ${tel}  
    Input Text                   ${CAMPO_ADICIONAL}      ${casa}
    Select Checkbox              ${RADIO_SEXO}  
    Select From List By Value          css:#days                ${dia}     
    Select From List By Value          css:#months              ${mes}      
    Select From List By Value          css:#years               ${ano}      
    Click Element               ${BOTAO_REGISTRAR} 


