*** Settings ***
Documentation    Essa suíte testa o site da amazon.com.br 
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
Caso de teste 01- Acesso ao menu "Eletrônicos"
    [Documentation]    Esse teste verifica o menu eletrônicos do site da amazon
    ...                teste segunda linha
    [Tags]             menus    categorias
    Acessar a home page do site Amazon.com.br 
    Entrar no menu "Eletrônicos"
    Verificar se o título da página fica "Eletrônicos e Tecnologia |Amazon.com.br"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se aparece a categoria "Computadores e Informática"



    
Caso de teste 02- Pesquisa de um Produto
    [Documentation]    Esse teste verifica a busca de um Produto do site
    [Tags]             busca_produtos    lista_busca
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar se o resultado da pesquisa,lista o produto pesquisado 

