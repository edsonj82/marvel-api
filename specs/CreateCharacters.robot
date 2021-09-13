*Settings*
Documentation       Suite de Teste do cadastro de personagens na API da Marvel

Resource            ${EXECDIR}/resources/base.robot

Library             ${EXECDIR}/resources/factories/Mv.py

Suite Setup         Set Client Key          edsonj82@gmail.com


*Test Cases*
Deve cadasrar um personagem

    &{personagem}           Factory Mv
    ${response}             POST New Character      ${personagem}

    Status Should Be        200     ${response}


Não deve cadastrar com o mesmo nome

    # Dado que Thanos ja existe no sistema
    ${personagem}           Factory Mv
    POST New Character      ${personagem}

    # Quando faço uma requisição POST para a rota characters
    ${response}             POST New Character      ${personagem}

    # Então o código de retorno deve ser 409
    Status Should Be        409     ${response}
    Should Be Equal         ${response.json()}[error]       Character already exists :(
