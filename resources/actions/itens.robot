***Settings***
Documentation       Ações da pagina de login e compras

***Keywords***
Open Page
    Go To      ${login_url} 

Login With
    [Arguments]     ${email_arg}        ${pass_arg}
   Input Text       ${CAMPO_EMAIL}        ${email_arg}
   Input Text       ${CAMPO_PASS}         ${pass_arg}
   Click Element           ${BOTAO_LOGIN}

Logout Link Should Be visible
    Wait Until Element Is Visible          ${BOTAO_LOGOUT}          5     

Add to cart  
    [Arguments]             ${produto1_arg}         ${produto2_arg} 
    Input Text              ${CAMPO_PESQUISA}       ${produto1_arg}
    Click Element           ${BOTAO_PESQUISAR}
    Click Element           ${BOTAO_PRODUTO1}
    Click Element           ${ADICIONAR_CARRINHO}
    Click Element           ${BOTAO_CONT_COMPRA}
    Input Text              ${CAMPO_PESQUISA}       ${produto2_arg}
    Click Element           ${BOTAO_PESQUISAR}
    Click Element           ${BOTAO_PRODUTO2}
    Click Element           ${ADICIONAR_CARRINHO}
    Click Element           ${FECHAR_PEDIDO}
    Click Element           ${FECHAR_COMPRA}
    Click Element           ${NEXT_EMAIL}
    Select Checkbox         ${AGRRE}  
    Click Element           ${NEXT_SHIPPING}
    Click Element           ${PAGAMENTOS} 
    Click Element           ${BOTAO_FINALIZAR}

Finish shopping
    Click Element           ${FECHAR_PEDIDO}
    Click Element           ${FECHAR_COMPRA}
    Click Element           ${NEXT_EMAIL}
    Select Checkbox         ${AGRRE}  
    Click Element           ${NEXT_SHIPPING}
    Click Element           ${PAGAMENTOS} 
    Click Element           ${BOTAO_FINALIZAR}
    
Alert Should Be 
    [Arguments]     ${expected_arg}
    Wait Until Element Contains          ${DIV_MESSAGE}               ${expected_arg}