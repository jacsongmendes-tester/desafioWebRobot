***Settings***
Documentation       Ações da pagina de login e compras

***Keywords***
Open Page
    Go To      ${login_url} 

Login With
    [Arguments]     ${email_arg}        ${pass_arg}
   Fill Text       ${CAMPO_EMAIL}        ${email_arg}
   Fill Text       ${CAMPO_PASS}         ${pass_arg}
   Click          ${BOTAO_LOGIN}

Logout Link Should Be visible
    Wait for Elements State           ${BOTAO_LOGOUT}     visible     10

Add to cart  
    [Arguments]             ${produto1_arg}         ${produto2_arg} 
    Fill Text              ${CAMPO_PESQUISA}       ${produto1_arg}
    Click          ${BOTAO_PESQUISAR}
    Click          ${BOTAO_PRODUTO1}
    Click          ${ADICIONAR_CARRINHO}
    Click          ${BOTAO_CONT_COMPRA}
    Fill Text              ${CAMPO_PESQUISA}       ${produto2_arg}
    Click          ${BOTAO_PESQUISAR}
    Click          ${BOTAO_PRODUTO2}
    Click          ${ADICIONAR_CARRINHO}
    Click          ${FECHAR_PEDIDO}
    Click          ${FECHAR_COMPRA}
    Click          ${NEXT_EMAIL}
    Check Checkbox         ${AGRRE}  
    Click          ${NEXT_SHIPPING}
    Click          ${PAGAMENTOS} 
    Click          ${BOTAO_FINALIZAR}

Finish shopping
    Click          ${FECHAR_PEDIDO}
    Click          ${FECHAR_COMPRA}
    Click          ${NEXT_EMAIL}
    Check Checkbox         ${AGRRE}  
    Click          ${NEXT_SHIPPING}
    Click          ${PAGAMENTOS} 
    Click          ${BOTAO_FINALIZAR}
    
Alert Should Be 
    [Arguments]     ${expected_arg}
     Get Text            ${DIV_MESSAGE}      should be          ${expected_arg}