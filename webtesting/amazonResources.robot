*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    https://www.amazon.com.br/
${eletronicos}    //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${h1}      //h1[contains(.,'Eletrônicos e Tecnologia')] 
${nomeProduto}



*** Keywords ***
Abrir o navegador
    Open Browser    browser=gc
    Maximize Browser Window

Fechar o navegador
    Close Browser   

Acessar a home page do site Amazon.com.br
     Go To    url=${URL}
    Wait Until Element Is Visible    locator=${eletronicos}

Entrar no menu "Eletrônicos"
    Click Element    locator=${eletronicos}
    Wait Until Element Is Visible    locator=${eletronicos}

Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Wait Until Page Contains    text= Eletrônicos e Tecnologia
    Wait Until Element Is Visible    locator=${h1}

Verificar se o título da página fica "${titulo}"
    Title Should Be     ${titulo}

Verificar se aparece a categoria "${nomeCategoria}"
    Element Should Be Visible  locator=//a[@aria-label='${nomeCategoria}']


Digitar o nome de produto "${nomeProduto}" no campo de pesquisa
    Input Text    locator=//input[contains(@type,'text')]    text=${nomeProduto}

Clicar no botão de pesquisa
    Click Element    locator=//input[contains(@type,'submit')]

Verificar se o resultado da pesquisa,lista o produto pesquisado
   Wait Until Page Contains    text= ${nomeProduto}
    

    