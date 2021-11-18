*** Settings ***
Resource          ../resource/Resource.robot
# Suite Setup     Abrir navegador
Test Setup        Abrir navegador
# Suite Teardown    Fechar navegador
Test Teardown     Fechar navegador
# SETUP roda keyword antes da Suite ou Teste
# TEARDOWN roda keyword depois de um Suite ou Teste

*** Variables ***
${PRODUTO}      Blouse

*** Test Cases ***
Caso de Teste 01: Pesquisar produto existente
### {Setup}    Abrir navegador --- ignora o setup declarado em settings e executa o setup particular
    Acessar a página home do site
    Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Clicar no botão 'Pesquisar'
    Conferir se o produto "${PRODUTO}" foi listado no site
# ### {Teardown}    Fechar navegador --- ignora o teardown declarado em settings e executa o teardown particular

# Caso de Teste 02: Pesquisar produto não existente
#     Acessar a página home do site
#     Digitar o nome do produto "NãoExistente" no campo de pesquisa
#     Clicar no botão 'Pesquisar'
#     Conferir mensagem de erro "No results were found for your search "NãoExistente"

*** Keywords *** 
