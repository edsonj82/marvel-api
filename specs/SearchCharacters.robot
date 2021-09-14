*Settings*
Documentation       Suite de Teste de busca de personagens na API da Marvel

Resource            ${EXECDIR}/resources/base.robot
Library             ${EXECDIR}/resources/factories/Xmen.py

Suite Setup         Super Setup         edsonj82@outlook.com

*Test Cases*
Deve buscar um personagem pelo Id
    ${personagem}       Factory Logan
    ${logan}            POST New Character  ${personagem}
    ${logan_id}         Set Variable        ${logan.json()}[_id]

    ${response}     GET Character By Id    ${logan_id}

    Status Should Be        200         ${response}