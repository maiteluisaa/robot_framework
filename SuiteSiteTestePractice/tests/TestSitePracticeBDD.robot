*** Settings ***
Resource          ../resource/Resource.robot
# Suite Setup     Abrir navegador
Test Setup        Abrir navegador
# Suite Teardown    Fechar navegador
Test Teardown     Fechar navegador
# SETUP roda keyword antes da Suite ou Teste
# TEARDOWN roda keyword depois de um Suite ou Teste

*** Test Cases ***
Caso de Teste 01: Pesquisar produto existente
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na página de resultados da busca

Caso de Teste 02: Pesquisar produto não existente
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "NãoExistente"
    Então a página deve exibir a mensagem "No results were found for your search "NãoExistente"

*** Keywords ***
